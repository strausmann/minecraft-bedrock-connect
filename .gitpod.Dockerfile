ARG BUILD_FROM=gitpod/workspace-node:2025-06-16-15-20-00@sha256:b39a5802cc3ce7893349f0c98119c4184f7cc35a62bee6b04ca19851d7d62797
FROM ${BUILD_FROM}

ENV force_rebuild 202502111100

USER root

RUN curl -sSfL https://raw.githubusercontent.com/docker/scout-cli/main/install.sh | sh -s --

ARG EASY_ADD_VERSION=0.8.8
ADD https://github.com/itzg/easy-add/releases/download/${EASY_ADD_VERSION}/easy-add_linux_amd64 /usr/bin/easy-add
RUN chmod +x /usr/bin/easy-add

USER gitpod
