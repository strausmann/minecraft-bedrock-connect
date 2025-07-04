NAME = strausmann/minecraft-bedrock-connect
VERSION = scout-test
#BRC_VERSION = `curl --silent "https://api.github.com/repos/Pugmatt/BedrockConnect/releases/latest" | jq -r .tag_name`

.PHONY: default build build-nocache test tag-latest push push-latest release scout git-tag-version

default: build

build:
	echo $(BRC_VERSION)
	docker build -t $(NAME):$(VERSION) image \
		--build-arg TARGETARCH=amd64 \
		--label "org.opencontainers.image.revision=$(git rev-parse --short HEAD)" \
		--label "org.opencontainers.image.created=$(date -I)" \
		--rm

build-nocache:
	docker build -t $(NAME) --no-cache --rm image

test:
	docker run --rm --init -it -e BRC_VERSION=1.56 -e MYSQL_DB=Bjoern -e SERVER_LIMIT=85 -e DEBUG=true --name=brc $(NAME):$(VERSION)

tag:
	docker tag $(NAME):$(NAME):$(VERSION)

tag-latest:
	docker tag $(NAME): $(NAME):latest

push:
	docker push $(NAME):$(VERSION)

push-latest:
	docker push $(NAME):latest

release: build test tag-latest push push-latest

scout:
	docker scout cves --only-fixed --org strausmann

git-tag-version: release
	git tag -a v$(VERSION) -m "v$(VERSION)"
	git push origin v$(VERSION)
