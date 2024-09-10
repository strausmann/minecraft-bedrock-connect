ARG BUILD_FROM=openjdk:24-ea-jdk-slim-bookworm
FROM ${BUILD_FROM}

ARG APT_UPDATE=20240910.1 \
    UID=1000 \
    GID=1000 \
    UNAME=bdc \
    BRC_VERSION \
    TARGETARCH \
    CI_BUILD \
    BUILD_DATE \
    BUILD_VERSION \
    VCS_REF

# renovate: datasource=github-releases depName=itzg/easy-add versioning=loose
ARG BIN_EASY_ADD_VERSION=0.8.8

# renovate: datasource=github-releases depName=itzg/mc-monitor versioning=loose
ARG BIN_MC_MONITOR_VERSION=0.14.1

# renovate: datasource=github-releases depName=itzg/entrypoint-demoter versioning=loose extractVersion=(^v(?<version>.*)$)
ARG BIN_ENTRYPOINT_DEMOTER_VERSION=0.4.5

# renovate: datasource=repology depName=debian12/curl versioning=debian
ARG DEBIAN_CURL_VERSION=7.88.1-10+deb12u7

# renovate: datasource=repology depName=debian12/unzip versioning=debian
ARG DEBIAN_UNZIP_VERSION=6.0-28

# renovate: datasource=repology depName=debian12/jq versioning=debian
ARG DEBIAN_JQ_VERSION=1.6-2.1

# renovate: datasource=repology depName=debian12/nano versioning=debian
ARG DEBIAN_NANO_VERSION=7.2-1+deb12u1

# renovate: datasource=repology depName=debian12/procps versioning=debian
ARG DEBIAN_PROCPS_VERSION=2:4.0.2-3

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get purge openldap tar perl krb5 libgcrypt20 gcc-12 nghttp2 -y || true \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
    curl="${DEBIAN_CURL_VERSION}" \
    unzip="${DEBIAN_UNZIP_VERSION}" \
    jq="${DEBIAN_JQ_VERSION}" \
    nano="${DEBIAN_NANO_VERSION}" \
    procps="${DEBIAN_PROCPS_VERSION}" \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ADD https://github.com/itzg/easy-add/releases/download/${BIN_EASY_ADD_VERSION}/easy-add_linux_${TARGETARCH} /usr/local/bin/easy-add

RUN mkdir -p /docker/brc && mkdir -p /config && chmod 664 /config \
    && chmod +x /usr/local/bin/easy-add \
    && easy-add --var version=${BIN_ENTRYPOINT_DEMOTER_VERSION} --var app=entrypoint-demoter --file {{.app}} --from https://github.com/itzg/{{.app}}/releases/download/v{{.version}}/{{.app}}_{{.version}}_linux_${TARGETARCH}.tar.gz \
    && easy-add --var version=${BIN_MC_MONITOR_VERSION} --var app=mc-monitor --file {{.app}} --from https://github.com/itzg/{{.app}}/releases/download/{{.version}}/{{.app}}_{{.version}}_linux_${TARGETARCH}.tar.gz

COPY *.sh /opt/

EXPOSE 19132/udp

VOLUME [ "/data" ]

WORKDIR /data

ENTRYPOINT ["/usr/local/bin/entrypoint-demoter", "--match", "/data", "--debug", "--stdin-on-term", "stop", "/opt/bedrock-entry.sh"]

HEALTHCHECK --start-period=1m CMD /usr/local/bin/mc-monitor status-bedrock --host 127.0.0.1 --port 19132

LABEL \
    org.opencontainers.image.title="strausmann/minecraft-bedrock-connect" \
    org.opencontainers.image.description="Minecraft Bedrock Connect based on Pugmatt/BedrockConnect compatible with AMD64 and ARM64 (Rasp Pi)" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.version=${BUILD_VERSION} \
    org.opencontainers.image.source="https://git.strausmann.de/minecraft/bedrock-connect" \
    org.opencontainers.image.url="https://hub.docker.com/r/strausmann/minecraft-bedrock-connect" \
    org.opencontainers.image.documentation="https://git.strausmann.de/minecraft/bedrock-connect" \
    org.opencontainers.image.authors="Bjoern Strausmann <bjoern@strausmann.net>" \
    org.opencontainers.image.revision=${VCS_REF} \
    org.opencontainers.image.vendor="strausmann" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.base.name=${BUILD_FROM} \
    de.strausmann.ci-build=${CI_BUILD} \
    de.strausmann.releasenotes="https://git.strausmann.de/minecraft/bedrock-connect/-/releases"
