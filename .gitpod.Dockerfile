ARG BUILD_FROM=gitpod/workspace-node:2025-08-25-18-17-39@sha256:9bdf13a5a21f9676aa5366fddbf6b3c21c4b30bb0c90b70429537fd03438fdc6
FROM ${BUILD_FROM}

ENV force_rebuild 202502111100

USER root

RUN curl -sSfL https://raw.githubusercontent.com/docker/scout-cli/main/install.sh | sh -s --

ARG EASY_ADD_VERSION=0.8.8
ADD https://github.com/itzg/easy-add/releases/download/${EASY_ADD_VERSION}/easy-add_linux_amd64 /usr/bin/easy-add
RUN chmod +x /usr/bin/easy-add

USER gitpod
