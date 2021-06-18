.PHONY: build
build:
	docker build -t povilasb/nginx-rtmp .

.PHONY: run
run:
	docker run -d -p 20210:20210 --name nginx-rtmp povilasb/nginx-rtmp
