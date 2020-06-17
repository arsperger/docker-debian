all: build

build:
	@docker build --tag=arsperger/debian:stretch .

release: build
	@docker build --tag=arpserger/debian:$(shell cat VERSION) .
