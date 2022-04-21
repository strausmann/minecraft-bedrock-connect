#docker build -t flask-local-build --build-arg GIT_COMMIT=$(git log -1 --format=%h) .

BRC_VERSION=$(curl --silent "https://api.github.com/repos/Pugmatt/BedrockConnect/releases/latest" | jq -r .tag_name)

DOCKER_BUILDKIT=1  docker build -t strausmann/minecraft-bedrock-connect .  --build-arg BRC_VERSION=$BRC_VERSION --label "org.opencontainers.image.revision=$(git rev-parse --short HEAD)" --label "org.opencontainers.image.created=$(date -I)"