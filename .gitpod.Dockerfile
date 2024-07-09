FROM gitpod/workspace-node:2024-06-26-08-49-45

ENV force_rebuild 2024062701

USER root

RUN curl -sSfL https://raw.githubusercontent.com/docker/scout-cli/main/install.sh | sh -s --

ARG EASY_ADD_VERSION=0.8.7
ADD https://github.com/itzg/easy-add/releases/download/${EASY_ADD_VERSION}/easy-add_linux_amd64 /usr/bin/easy-add
RUN chmod +x /usr/bin/easy-add

USER gitpod
