.PHONY: build
build:
	docker rm -f dotfiles >> echo
	docker rmi -f dotfiles >> echo
	docker build -t dotfiles .

.PHONY: build-no-cache
build-no-cache:
	docker build --no-cache -t dotfiles .

.PHONY: run
run:
	docker run -v ~/code:/root/code --name dotfiles -it dotfiles

.PHONY: start
start:
	docker start dotfiles
	docker attach dotfiles

.PHONY: rebuild-n-start
rebuild-n-start:
	make build
	make run

