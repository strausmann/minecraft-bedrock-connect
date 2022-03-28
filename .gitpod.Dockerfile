FROM gitpod/workspace-base

ENV force_rebuild 100

USER root

# Update APT Database
### base ###
RUN apt-get update -q \
    && apt-get install -y php-dev

# Install latest composer v2 release
RUN curl -s https://getcomposer.org/installer | php \
    && mv composer.phar /usr/bin/composer \
    && mkdir -p /home/gitpod/.config \
    && chown -R gitpod:gitpod /home/gitpod/.config

USER gitpod

# Install Changelogger
RUN COMPOSER_ALLOW_SUPERUSER=1 composer global require churchtools/changelogger

# Add Workspace/Project composer bin folder to $PATH
ENV PATH="$PATH:$HOME/.config/composer/vendor/bin:$GITPOD_REPO_ROOT/vendor/bin"