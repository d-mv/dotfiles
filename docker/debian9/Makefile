.PHONY: build
build:
	docker rm -f debian9 >> /dev/null
	docker rmi -f debian9 >> /dev/null
	docker build -t debian9 .

.PHONY: build-no-cache
build-no-cache:
	docker build --no-cache -t debian9 .

.PHONY: run
run:
	docker run -v ~/code:/root/code --name debian9 -it debian9

.PHONY: start
start:
	docker start debian9
	docker attach debian9


.PHONY: start-only
start-only:
	docker start debian9

.PHONY: rebuild-n-start
rebuild-n-start:
	make build
	make run

