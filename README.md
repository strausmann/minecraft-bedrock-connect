# Minecraft Bedrock Connect

[![Gitlab Pipeline Status](https://img.shields.io/gitlab/pipeline-status/minecraft%2Fbedrock-connect?gitlab_url=https%3A%2F%2Fgit.strausmann.de&branch=main&logo=GitLab&style=for-the-badge&link=https%3A%2F%2Fgit.strausmann.de%2Fminecraft%2Fbedrock-connect%2Fcommits%2Fmain)](https://git.strausmann.de/minecraft/bedrock-connect/-/pipelines)
[![GitLab Issues](https://img.shields.io/gitlab/issues/open/minecraft%2Fbedrock-connect?gitlab_url=https%3A%2F%2Fgit.strausmann.de%2F&style=for-the-badge&logo=GitLab&link=https%3A%2F%2Fgit.strausmann.de%2Fminecraft%2Fbedrock-connect%2F-%2Fissues)](https://git.strausmann.de/minecraft/bedrock-connect/-/issues)
[![GitLab License](https://img.shields.io/gitlab/license/minecraft%2Fbedrock-connect?gitlab_url=https%3A%2F%2Fgit.strausmann.de&logo=GitLab&style=for-the-badge&color=blue&link=https%3A%2F%2Fgit.strausmann.de%2Fminecraft%2Fbedrock-connect%2F-%2Fblob%2Fmain%2FLICENSE.md)](https://git.strausmann.de/minecraft/bedrock-connect/-/blob/main/LICENSE.md?ref_type=heads)
[![Static Badge](https://img.shields.io/badge/ChangeLog-here-brightgreen?style=for-the-badge&logo=GitLab&link=https%3A%2F%2Fgit.strausmann.de%2Fminecraft%2Fbedrock-connect%2F-%2Fblob%2Fmain%2FCHANGELOG.md)](https://git.strausmann.de/minecraft/bedrock-connect/-/blob/main/CHANGELOG.md?ref_type=heads)
[![Open in Gitpod](https://img.shields.io/badge/Open%20in-Gitpod-%232cb64c?logo=gitpod&style=for-the-badge)](https://gitpod.io/#https://git.strausmann.de/minecraft/bedrock-connect)

[![Docker Pulls](https://img.shields.io/docker/pulls/strausmann/minecraft-bedrock-connect?logo=docker&style=for-the-badge)](https://hub.docker.com/r/strausmann/minecraft-bedrock-connect)
[![Docker Image Version](https://img.shields.io/docker/v/strausmann/minecraft-bedrock-connect?sort=semver&logo=docker&link=https%3A%2F%2Fhub.docker.com%2Fr%2Fstrausmann%2Fminecraft-bedrock-connect&style=for-the-badge)](https://hub.docker.com/r/strausmann/minecraft-bedrock-connect)
[![Docker Image Size latest by date](https://img.shields.io/docker/image-size/strausmann/minecraft-bedrock-connect?logo=docker&style=for-the-badge)](https://hub.docker.com/r/strausmann/minecraft-bedrock-connect)

**A simple Docker image that can provide the Minecraft Bedrock Connect service, based on the project [Bedrock Connect](https://github.com/Pugmatt/BedrockConnect)**

# Supported tags and respective <code>Dockerfile</code> links

## Tags

| Tag(s)                                                                                                                                                                                                                                                          | Description                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- |
| [<code>latest</code>](https://git.strausmann.de/minecraft/bedrock-connect/-/tree/main), [<code>2</code>](https://git.strausmann.de/minecraft/bedrock-connect/-/tree/main), [<code>2.\*</code>](https://git.strausmann.de/minecraft/bedrock-connect/-/tree/main) | latest stable - debian amd64/arm64                                |
| <code>beta</code>, <code>_-beta._</code>                                                                                                                                                                                                                        | Beta. New features preview or help to test. It could be unstable. |
| <code>nightly\*</code>                                                                                                                                                                                                                                          | development build, very unstable                                  |

## Quick reference

- Documentation:
  - [Install 2.x using Docker](https://wiki.strausmann.net/docker/bedrock-connect/install)
- Where to get help: [on Discord](https://discord.gg/4EzvB33xJH)
- Where to file issues: [https://github.com/strausmann/minecraft-bedrock-connect](https://github.com/strausmann/minecraft-bedrock-connect)
- Maintained by: [strausmann](https://git.strausmann.de/strausmann)
- Supported architectures: <code>amd64</code> <code>arm64</code>
- License: [MIT](https://git.strausmann.de/minecraft/bedrock-connect/-/blob/main/LICENSE.md)

## ⭐ Features

- Running Bedrock Connect as a Docker Container
- Can be used with MySQL Database as backend
- Configuration via ENV variables
- Use of the custom_servers via json file possible

## Environment Variables

The following arguments can be placed in the startup command to ajust settings:

| Argument            | Description                                                                                                                                                                                                                  | Default Value   |
| ------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- |
| BRC_VERSION         | The Bedrock Connect version is used when the container is started. For example, 1.15 for the Bedrock Connect version 1.15. It does not mean the Minecraft server version.                                                    | latest          |
| DB_TYPE             | Database Type (accepts values **mysql**, **postgres**, **mariadb**, or **none**)                                                                                                                                             | none            |
| DB_HOST             | Database Host                                                                                                                                                                                                                | localhost       |
| DB_DB               | Database Name                                                                                                                                                                                                                | bedrock-connect |
| DB_USER             | Database Username                                                                                                                                                                                                            | root            |
| DB_PASS             | Database Password                                                                                                                                                                                                            |                 |
| AUTO_RECONNECT      | If true, Make Mysql and MairaDB auto reconnect to the database when disconnected                                                                                                                                             | false           |
| SERVER_LIMIT        | How many servers a new player can have in their serverlist                                                                                                                                                                   | 100             |
| NODB                | If true, use JSON files for data instead of MySQL                                                                                                                                                                            | true            |
| KICK_INACTIVE       | If true, players will be kicked after 10 minutes of inactivity with the serverlist UI                                                                                                                                        | true            |
| CUSTOM_SERVERS      | Sets the path to a custom server file, for specifying your servers in the list for all players. See [custom servers](https://github.com/Pugmatt/BedrockConnect#defining-custom-servers).                                     |                 |
| USER_SERVERS        | If true, players can add and remove servers on the serverlist. If false, the options are hidden.                                                                                                                             | true            |
| FEATURED_SERVERS    | If true, the featured servers will be displayed in the serverlist. If false, the servers are hidden.                                                                                                                         | true            |
| WHITELIST           | Specify file containing list of whitelisted players. (Should be a text file with the player names specified on seperate lines)                                                                                               |                 |
| FETCH_FEATURED_IPS  | If true, dynamically grab the featured server IPs from the domain names. If false, a file `featured_server_ips.json` will be generated, containing the hard-coded featured server IPs, and to allow changing them if needed. | true            |
| FETCH_IPS           | If true, dynamically grab the server IPs from domain names, of any server a user is attempting to join.                                                                                                                      | false           |
| LANGUAGE            | Specify a file containing language customizations. See [guide for changing wording](https://github.com/Pugmatt/BedrockConnect?tab=readme-ov-file#wordinglanguage).                                                           |                 |
| DEBUG               | If true, debug level logs will display in the program output.                                                                                                                                                                | true            |
| MOTD                | Specify a text file containing wording for a MOTD (Message of the day) screen. Message shows before showing the server list.                                                                                                 |                 |
| MOTD_FIRST_JOIN     | If true, MOTD screen (if one is set) will display to new players. If false, it will only display to returning players.                                                                                                       |                 |
| MOTD_COOLDOWN       | Number of days to wait until showing MOTD (if one is set) to a player after they already viewed it once. (Value of 0 shows every time)                                                                                       | 0               |
| STORE_DISPLAY_NAMES | If true, player displays names will be included in the stored player data.                                                                                                                                                   | true            |
| PACKET_LIMIT        | Number of datagram packets each address can send within one tick (10ms)                                                                                                                                                      | 200             |
| GLOBAL_PACKET_LIMIT | Number of all datagrams that will be handled within one tick (10ms) before server starts dropping any incoming data.                                                                                                         | 100000          |

## 🔧 How to Install

The Docker image can be deployed quickly and easily via these two commands, or via Docker compose, see examples below.

### 💪🏻 Non-Docker

For an installation without Docker, please follow the instructions from [Pugmatt](https://github.com/Pugmatt/BedrockConnect#hosting-your-own-serverlist-server)

### 🐳 Docker

```bash
# Create a volume
docker volume create bedrock-connect

# Start the container
docker run -d --restart=always -p 19132:19132 -e NODB=true -v bedrock-connect:/data --name bedrock-connect strausmann/minecraft-bedrock-connect:2
```

#### Exposed Ports

- UDP 19132 : the Bedrock server port. NOTE that you must append /udp when exposing the port, such as <code>-p 19132:19132/udp</code>

### 🐳 Deploying with Docker Compose

```yaml
---
services:
  bedrockconnect:
    image: strausmann/minecraft-bedrock-connect:2
    restart: always
    environment:
      - CUSTOM_SERVERS=/config/serverlist.json
      - SERVER_LIMIT=25
    ports:
      - 19132:19132/udp
    volumes:
      - bedrockconnect:/config

volumes:
  bedrockconnect:
    driver: local
```

### 🐳 Deploying with Docker Compose and MySQL Backend

```yaml
---
services:
  bedrockconnect:
    image: strausmann/minecraft-bedrock-connect:2
    restart: always
    environment:
      - DB_TYPE=mysql
      - DB_HOST=db
      - DB_USER=bedrock
      - DB_PASS=bedrock
      - DB_DB=bedrock
      - CUSTOM_SERVERS=/config/serverlist.json
      - SERVER_LIMIT=25
    ports:
      - 19132:19132/udp
    depends_on:
      - db
    volumes:
      - bedrockconnect:/config

  db:
    image: mariadb:10.6
    restart: always
    environment:
      - MYSQL_ROOT_PASSWORD=rootpwbedrock
      - MYSQL_PASSWORD=bedrock
      - MYSQL_USER=bedrock
      - MYSQL_DATABASE=bedrock
      - TZ=Europe/Berlin
      - PGID=1000
      - PUID=1000
    ports:
      - 3306:3306
    volumes:
      - bedrockconnect_database:/var/lib/mysql

volumes:
  bedrockconnect:
    driver: local
  bedrockconnect_database:
    driver: local
```

## Volumes

<code>docker volume create bedrock-connect</code>

# License

[View license information](https://git.strausmann.de/minecraft/bedrock-connect/-/blob/main/LICENSE.md) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).
