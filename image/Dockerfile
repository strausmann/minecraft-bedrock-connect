# renovate: datasource=docker depName=openjdk versioning=loose
ARG BUILD_FROM=openjdk:26-ea-slim-trixie
FROM ${BUILD_FROM}

ARG APT_UPDATE=20251118.1 \
    BRC_VERSION \
    TARGETARCH \
    CI_BUILD \
    BUILD_DATE \
    BUILD_VERSION \
    VCS_REF \
    BUILD_FROM

ARG USERNAME=bedrock
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# renovate: datasource=github-releases depName=itzg/easy-add versioning=loose
ARG BIN_EASY_ADD_VERSION=0.8.11

# renovate: datasource=github-releases depName=itzg/mc-monitor versioning=loose
ARG BIN_MC_MONITOR_VERSION=0.15.7

# renovate: datasource=github-releases depName=itzg/entrypoint-demoter versioning=loose extractVersion=(^v(?<version>.*)$)
ARG BIN_ENTRYPOINT_DEMOTER_VERSION=0.4.9

# renovate: datasource=deb suite=bookworm depName=curl versioning=debian
ARG DEBIAN_CURL_VERSION=8.14.1-2

# renovate: datasource=repology depName=debian13/unzip versioning=debian
ARG DEBIAN_UNZIP_VERSION=6.0-29

# renovate: datasource=repology depName=debian13/jq versioning=debian
ARG DEBIAN_JQ_VERSION=1.7.1-6+deb13u1

# renovate: datasource=repology depName=debian13/nano versioning=debian
ARG DEBIAN_NANO_VERSION=8.4-1

# renovate: datasource=repology depName=debian13/procps versioning=debian
ARG DEBIAN_PROCPS_VERSION=2:4.0.4-9

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y purge \
    openldap \
    tar \
    perl \
    krb5 \
    libgcrypt20 \
    glibc \
    shadow \
    gcc-12 \
    nghttp2 \
    || true \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
    curl="${DEBIAN_CURL_VERSION}" \
    jq="${DEBIAN_JQ_VERSION}" \
    nano="${DEBIAN_NANO_VERSION}" \
    procps="${DEBIAN_PROCPS_VERSION}" \
    sudo \
    unzip="${DEBIAN_UNZIP_VERSION}" \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && echo "$USERNAME" ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/"$USERNAME" \
    && chmod 0440 /etc/sudoers.d/"$USERNAME"

ADD https://github.com/itzg/easy-add/releases/download/${BIN_EASY_ADD_VERSION}/easy-add_linux_${TARGETARCH} \
    /usr/local/bin/easy-add

RUN mkdir -p /docker/brc && mkdir -p /config && chmod 664 /config \
    && chmod +x /usr/local/bin/easy-add \
    && easy-add --var version="${BIN_ENTRYPOINT_DEMOTER_VERSION}" \
        --var app=entrypoint-demoter \
        --file {{.app}} \
        --from https://github.com/itzg/{{.app}}/releases/download/v{{.version}}/{{.app}}_{{.version}}_linux_${TARGETARCH}.tar.gz \
    && easy-add --var version="${BIN_MC_MONITOR_VERSION}" \
        --var app=mc-monitor \
        --file {{.app}} \
        --from https://github.com/itzg/{{.app}}/releases/download/{{.version}}/{{.app}}_{{.version}}_linux_${TARGETARCH}.tar.gz \
    && groupadd --gid "$USER_GID" "$USERNAME" \
    && useradd --uid "$USER_UID" --gid "$USER_GID" -m "$USERNAME" \
    && chown "$USERNAME:$USERNAME" /docker/brc

COPY *.sh /opt/

EXPOSE 19132/udp

USER $USERNAME

WORKDIR /home/$USERNAME

ENTRYPOINT ["/usr/local/bin/entrypoint-demoter", "--match", "/home/bedrock", "--debug", "--stdin-on-term", "stop", "/opt/bedrock-entry.sh"]

HEALTHCHECK --start-period=1m CMD ["/usr/local/bin/mc-monitor", "status-bedrock", "--host", "127.0.0.1", "--port", "19132"]

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
