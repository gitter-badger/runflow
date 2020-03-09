
GOPATH:=$(shell go env GOPATH)

.PHONY: build
build:
	go build -o runflow cmd/runflow/*.go
	go build -o runflow-agent cmd/runflow-agent/*.go

.PHONY: test
test:
	go test -v ./... -cover

.PHONY: docker
docker:
	docker build . -t runflow:latest