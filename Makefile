all: build

build:
	@docker build --tag=eurolan/debian:jessie .

release: build
	@docker build --tag=eurolan/debian:$(shell cat VERSION) .
