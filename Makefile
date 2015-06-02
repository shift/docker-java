all: build push

build:
	docker build -t ${USER}/java:8 .

push: build
	docker push ${USER}/java:8

test: build
	docker run -i ${USER}/java:8 /usr/bin/java -version
