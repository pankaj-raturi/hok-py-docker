BASE=ubuntu:20.04
version=latest
IMAGE_NAME=pankajraturi/hok-apache-flask:${version}
MAINTAINER="panakj@tripatinfoways.com"


build:
	docker build \
		--build-arg BASE=$(BASE) \
		--build-arg MAINTAINER=$(MAINTAINER) \
		-t $(IMAGE_NAME) --file Dockerfile_base_image .

push:
	docker push ${IMAGE_NAME}

all: build push