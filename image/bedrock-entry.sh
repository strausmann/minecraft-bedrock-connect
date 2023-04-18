#!/bin/bash

version_greater_equal()
{
    printf '%s\n%s\n' "$2" "$1" | sort --check=quiet --version-sort
}

set -eo pipefail

: "${TMP_DIR:=/tmp}"

if [[ ${DEBUG^^} = TRUE ]]; then
  set -x
  curlArgs=(-v)
  echo "DEBUG: running as $(id -a) with $(ls -ld /data)"
  echo "       current directory is $(pwd)"
fi

brc_source_file="BedrockConnect-1.0-SNAPSHOT.jar"
mysql_host=${MYSQL_HOST:-localhost}
mysql_db=${MYSQL_DB:-bedrock-connect}
mysql_user=${MYSQL_USER:-bedrock}
mysql_pass=${MYSQL_PASS:-bedrock}
brc_version=${BRC_VERSION:-latest}
server_limit=${SERVER_LIMIT:-100}
nodb=${NODB:-false}
generatedns=false
kick_inactive=${KICK_INACTIVE:-true}
user_servers=${USER_SERVERS:-true}
featured_servers=${FEATURED_SERVERS:-true}
fetch_featured_ips=${FETCH_FEATURED_IPS:-true}

java_xms=${JAVA_XMS:-256M}
java_xmx=${JAVA_XMX:-256M}

[[ ! -z "$WHITELIST" ]] && whitelist="whitelist=${WHITELIST}" && echo "whitelist set to ${WHITELIST}" || echo "whitelist disabled"
[[ ! -z "$CUSTOM_SERVERS" ]] && custom_servers="custom_servers=${CUSTOM_SERVERS}" && echo "custom_servers set to ${CUSTOM_SERVERS}" || echo "custom_servers disabled"

if [ "$brc_version" = "latest" ]; then
    brc_version=$(curl --silent "https://api.github.com/repos/Pugmatt/BedrockConnect/releases/latest" | jq -r .tag_name)
    echo "Latest Bedrock Connect version is: ${brc_version}"
fi

# #20 Fix since BRC 1.30
if (version_greater_equal "${brc_version}" 1.30 ); then
    brc_source_file="BedrockConnect-setup/BedrockConnect-1.0-SNAPSHOT.jar"
    echo "Bedrock Connect Jar Source File: '${brc_source_file}'"
fi

echo "Downloading now Bedrock Connect JAR - version: $brc_version"
easy-add --var version=$brc_version --from https://github.com/Pugmatt/BedrockConnect/releases/download/{{.version}}/BedrockConnect-setup.zip --file $brc_source_file -to /docker/brc
chmod 664 /docker/brc/BedrockConnect-1.0-SNAPSHOT.jar

echo "Bedrock Connect version: ${brc_version}"

java -Xms${java_xms} -Xmx${java_xmx} -jar /docker/brc/BedrockConnect-1.0-SNAPSHOT.jar server_limit=${server_limit} mysql_host=${mysql_host} mysql_db=${mysql_db} mysql_user=$mysql_user mysql_pass=$mysql_pass kick_inactive=$kick_inactive user_servers=$user_servers featured_servers=$featured_servers nodb=$nodb $custom_servers fetch_featured_ips=$fetch_featured_ips ${whitelist}