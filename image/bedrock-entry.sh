#!/bin/bash

set -eo pipefail

: "${TMP_DIR:=/tmp}"

if [[ ${DEBUG^^} = TRUE ]]; then
  set -x
  curlArgs=(-v)
  echo "DEBUG: running as $(id -a) with $(ls -ld /data)"
  echo "       current directory is $(pwd)"
fi

brc_source_zipfile="BedrockConnect-setup.zip"
brc_source_file="BedrockConnect-1.0-SNAPSHOT.jar"
brc_version=${BRC_VERSION:-latest}
mysql_host=${MYSQL_HOST:-localhost}
mysql_db=${MYSQL_DB:-bedrock-connect}
mysql_user=${MYSQL_USER:-bedrock}
mysql_pass=${MYSQL_PASS:-bedrock}
db_type=${DB_TYPE:-none}
db_host=${DB_HOST:-$MYSQL_HOST}
db_db=${DB_DB:-$MYSQL_DB}
db_user=${DB_USER:-$MYSQL_USER}
db_pass=${DB_PASS:-$MYSQL_PASS}
auto_reconnect=${AUTO_RECONNECT:-false}
server_limit=${SERVER_LIMIT:-100}
port=${PORT:-19132}
nodb=${NODB:-false}
generatedns=false
kick_inactive=${KICK_INACTIVE:-true}
user_servers=${USER_SERVERS:-true}
featured_servers=${FEATURED_SERVERS:-true}
fetch_featured_ips=${FETCH_FEATURED_IPS:-true}
fetch_ips=${FETCH_IPS:-false}
debug=${DEBUG:-true}
motd_first_join=${MOTD_FIRST_JOIN:-true}
motd_cooldown=${MOTD_COOLDOWN:-0}
store_display_names=${STORE_DISPLAY_NAMES:-true}
packet_limit=${PACKET_LIMIT:-200}
global_packet_limit=${GLOBAL_PACKET_LIMIT:-100000}
java_xms=${JAVA_XMS:-256M}
java_xmx=${JAVA_XMX:-256M}

[[ ! -z "$MOTD" ]] && motd="whitelist=${MOTD}" && echo "whitelist set to ${MOTD}" || echo "motd disabled"
[[ ! -z "$WHITELIST" ]] && whitelist="whitelist=${WHITELIST}" && echo "whitelist set to ${WHITELIST}" || echo "whitelist disabled"
[[ ! -z "$LANGUAGE" ]] && language="language=${LANGUAGE}" && echo "language set to ${LANGUAGE}" || echo "language disabled"
[[ ! -z "$CUSTOM_SERVERS" ]] && custom_servers="custom_servers=${CUSTOM_SERVERS}" && echo "custom_servers set to ${CUSTOM_SERVERS}" || echo "custom_servers disabled"

# Grab the release tag for the latest release
if [ "$brc_version" = "latest" ]; then
    brc_version=$(curl --silent "https://api.github.com/repos/Pugmatt/BedrockConnect/releases/latest" | jq -r .tag_name)
    echo "Latest Bedrock Connect version is: ${brc_version}"
fi

echo "Downloading now Bedrock Connect JAR - version: ${brc_version}"
easy-add --var version=${brc_version} --from https://github.com/Pugmatt/BedrockConnect/releases/download/{{.version}}/${brc_source_zipfile} --file ${brc_source_file} -to /docker/brc
chmod 664 /docker/brc/BedrockConnect-1.0-SNAPSHOT.jar

# Conditional inclusion of db_ parameters based on NODB value
if [[ "$nodb" = "true" ]]; then
    echo "NODB is true: Database variables will be excluded from Java command."
    db_params=""  # Exclude database-related parameters
else
    echo "NODB is false: Including database variables in Java command."
    db_params="db_type=${db_type} db_host=${db_host} db_db=${db_db} db_user=${db_user} db_pass=${db_pass} auto_reconnect=${auto_reconnect}"
fi

echo "Bedrock Connect version: ${brc_version}"
java -Xms${java_xms} -Xmx${java_xmx} -jar /docker/brc/BedrockConnect-1.0-SNAPSHOT.jar \
    server_limit=${server_limit} \
    kick_inactive=${kick_inactive} \
    user_servers=${user_servers} \
    featured_servers=${featured_servers} \
    fetch_featured_ips=${fetch_featured_ips} \
    debug=${debug} \
    motd_first_join=${motd_first_join} \
    motd_cooldown=${motd_cooldown} \
    store_display_names=${store_display_names} \
    packet_limit=${packet_limit} \
    global_packet_limit=${global_packet_limit} \
    nodb=${nodb} \
    ${motd} \
    ${whitelist} \
    ${language} \
    ${custom_servers} \
    ${db_params}
