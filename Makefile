NAME = strausmann/minecraft-bedrock-connect
VERSION = 2.0.0
#BRC_VERSION = `curl --silent "https://api.github.com/repos/Pugmatt/BedrockConnect/releases/latest" | jq -r .tag_name`

.PHONY: build build-nocache test tag-latest push push-latest release git-tag-version

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
	docker run --rm --init -it -e NODB=true -e MYSQL_DB=Bjoern -e NODB=true -e SERVER_LIMIT=85 -e DEBUG=true --name=brc $(NAME):$(VERSION)

tag:
	docker tag $(NAME):$(NAME):$(VERSION)

tag-latest:
	docker tag $(NAME): $(NAME):latest

push:
	docker push $(NAME):$(VERSION)

push-latest:
	docker push $(NAME):latest

release: build test tag-latest push push-latest

git-tag-version: release
	git tag -a v$(VERSION) -m "v$(VERSION)"
	git push origin v$(VERSION)
