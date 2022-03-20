FROM openjdk:19-ea-11-slim-bullseye

ARG ARCH=amd64
ARG EASY_ADD_VERSION=0.7.1
ARG BRC_VERSION=unspecified
ARG APT_UPDATE=20220313.2

# Label docker image
LABEL org.opencontainers.image.authors="Björn Strausmann <bjoern@strausmann.net>"
LABEL org.opencontainers.image.source="https://git.isp-serverfarm.de/minecraft/bedrock-connect"
LABEL org.opencontainers.image.vendor="strausmann"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.documentation="https://git.isp-serverfarm.de/minecraft/bedrock-connect"
LABEL net.strausmann.image.brc.source="https://github.com/Pugmatt/BedrockConnect"
LABEL net.strausmann.image.brc.version=$BRC_VERSION
LABEL net.strausmann.image.apt.lastupdate=$APT_UPDATE

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    unzip \
    jq \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 19132/udp

RUN mkdir -p /docker/brc

WORKDIR /docker/brc

# Get Easy-Add
ADD https://github.com/itzg/easy-add/releases/download/${EASY_ADD_VERSION}/easy-add_linux_${ARCH} /usr/local/bin/easy-add
RUN chmod +x /usr/local/bin/easy-add

# Get MC-Monitor
RUN easy-add --var version=0.10.6 --var app=mc-monitor --file {{.app}} --from https://github.com/itzg/{{.app}}/releases/download/{{.version}}/{{.app}}_{{.version}}_linux_${ARCH}.tar.gz
# Get set-property
RUN easy-add --var version=0.1.1 --var app=set-property --file {{.app}} --from https://github.com/itzg/{{.app}}/releases/download/{{.version}}/{{.app}}_{{.version}}_linux_${ARCH}.tar.gz
# Download Bedrock Connect
ADD https://github.com/Pugmatt/BedrockConnect/releases/download/${BRC_VERSION}/BedrockConnect-1.0-SNAPSHOT.jar /docker/brc/BedrockConnect.jar

CMD ["java", "-Xms256M", "-Xmx256M", "-jar", "BedrockConnect.jar", "nodb=true"]

ENV VERSION=LATEST \
    SERVER_PORT=19132

HEALTHCHECK --start-period=1m CMD /usr/local/bin/mc-monitor status-bedrock --host 127.0.0.1 --port $SERVER_PORT