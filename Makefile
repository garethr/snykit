NAME : snykit
CONFIG := snykit.yaml

RENDER = ytt -f $(CONFIG) -f values.yaml
BUILD = kbld -f -
DEPLOY = kapp -a $(NAME) -f - -y

check-buildkit:
ifndef DOCKER_BUILDKIT
	$(error You must enable Buildkit for Docker, by setting DOCKER_BUILDKIT=1)
endif

build: check-buildkit
	@$(RENDER) | $(BUILD)

deploy: check-buildkit
	$(RENDER) | $(DEPLOY)

build-and-deploy: check-buildkit
	@$(RENDER) | $(BUILD) | $(DEPLOY)

render: check-buildkit
	@$(RENDER)


