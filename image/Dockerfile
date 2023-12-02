FROM openjdk:22-ea-jdk-slim-bookworm@sha256:1f44e508fe22f84f1308799a0f9ea41517d04d6d0e818039136b93ab73f1b3be

ARG APT_UPDATE=20231127.1
ARG EASY_ADD_VERSION=0.8.2
ARG MC_MONITOR_VERSION=0.12.6
ARG ENTRYPOINT_DEMOTER_VERSION=0.4.2
ARG UID=1000
ARG GID=1000
ARG UNAME=bdc
ARG BRC_VERSION
ARG TARGETARCH

# Label docker image
LABEL org.opencontainers.image.authors="Björn Strausmann <bjoern@strausmann.net>"
LABEL org.opencontainers.image.source="https://git.strausmann.de/minecraft/bedrock-connect"
LABEL org.opencontainers.image.vendor="strausmann"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.documentation="https://git.strausmann.de/minecraft/bedrock-connect"
LABEL net.strausmann.image.brc.source="https://github.com/Pugmatt/BedrockConnect"
LABEL net.strausmann.image.apt.lastupdate=$APT_UPDATE

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get purge openldap tar perl krb5 libgcrypt20 gcc-12 nghttp2 -y || true \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    unzip \
    jq \
    nano \
    procps \
    iputils-ping \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 19132/udp

RUN mkdir -p /docker/brc && mkdir -p /config && chmod 664 /config

VOLUME [ "/data" ]

WORKDIR /data

ENTRYPOINT ["/usr/local/bin/entrypoint-demoter", "--match", "/data", "--debug", "--stdin-on-term", "stop", "/opt/bedrock-entry.sh"]

# Get Easy-Add
ADD https://github.com/itzg/easy-add/releases/download/${EASY_ADD_VERSION}/easy-add_linux_${TARGETARCH} /usr/local/bin/easy-add
RUN chmod +x /usr/local/bin/easy-add

# Get entrypoint-demoter
RUN easy-add --var version=${ENTRYPOINT_DEMOTER_VERSION} --var app=entrypoint-demoter --file {{.app}} --from https://github.com/itzg/{{.app}}/releases/download/v{{.version}}/{{.app}}_{{.version}}_linux_${TARGETARCH}.tar.gz
# Get MC-Monitor
RUN easy-add --var version=${MC_MONITOR_VERSION} --var app=mc-monitor --file {{.app}} --from https://github.com/itzg/{{.app}}/releases/download/{{.version}}/{{.app}}_{{.version}}_linux_${TARGETARCH}.tar.gz
# Add Bedrock-Entry
COPY *.sh /opt/
# Docker HEALTHCHECK
HEALTHCHECK --start-period=1m CMD /usr/local/bin/mc-monitor status-bedrock --host 127.0.0.1 --port 19132
