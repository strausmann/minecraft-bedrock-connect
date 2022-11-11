NAME = strausmann/minecraft-bedrock-connect
VERSION = 1.6.0
BRC_VERSION = `curl --silent "https://api.github.com/repos/Pugmatt/BedrockConnect/releases/latest" | jq -r .tag_name`

.PHONY: build build-nocache test tag-latest push push-latest release git-tag-version

build:
	echo $(BRC_VERSION)
	docker buildx create --use
	docker buildx build -t $(NAME) image \
		--platform linux/arm64 \
		--build-arg BRC_VERSION=$(BRC_VERSION) \
		--label "org.opencontainers.image.revision=$(git rev-parse --short HEAD)" \
		--label "org.opencontainers.image.created=$(date -I)" \
		--rm

build-nocache:
	docker build -t $(NAME) --no-cache --rm image

test:
	docker run --rm --init -it -e NODB=true -e MYSQL_DB=Bjoern -e NODB=true -e SERVER_LIMIT=85 --name=brc $(NAME)

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
