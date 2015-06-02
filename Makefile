all: build push

build:
	docker build -t ${DOCKER_USER}/java:8 .

push: build
	docker push ${DOCKER_USER}/java:8

test: build
	docker run -i ${DOCKER_USER}/java:8 /usr/bin/java -version
