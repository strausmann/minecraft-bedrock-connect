FROM gitpod/workspace-node

ENV force_rebuild 20231103

USER root

RUN curl -sSfL https://raw.githubusercontent.com/docker/scout-cli/main/install.sh | sh -s --

ARG EASY_ADD_VER=0.8.1
ADD https://github.com/itzg/easy-add/releases/download/${EASY_ADD_VER}/easy-add_linux_amd64 /usr/bin/easy-add
RUN chmod +x /usr/bin/easy-add

USER gitpod
