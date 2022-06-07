#!/bin/bash

mysql_host=${MYSQL_HOST:-localhost}
mysql_db=${MYSQL_DB:-bedrock-connect}
mysql_user=${MYSQL_USER:-bedrock}
mysql_pass=${MYSQL_PASS:-bedrock}
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

echo "Bedrock Connect Version: ${BRC_VERSION}"
echo "Last APT Update run: ${APT_UPDATE}"

java -Xms${java_xms} -Xmx${java_xmx} -jar /data/BedrockConnect.jar server_limit=${server_limit} mysql_host=${mysql_host} mysql_db=${mysql_db} mysql_user=$mysql_user mysql_pass=$mysql_pass kick_inactive=$kick_inactive user_servers=$user_servers featured_servers=$featured_servers nodb=$nodb $custom_servers fetch_featured_ips=$fetch_featured_ips ${whitelist}