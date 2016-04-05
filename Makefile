.SILENT :
.PHONY : test

update-dependencies:
	docker pull jwilder/docker-gen:0.7.0
	docker pull nginx:alpine
	docker pull python:3
	docker pull rancher/socat-docker:latest
	docker pull appropriate/curl:latest
	docker pull docker:1.9

test:
	docker build -t jwilder/nginx-proxy:bats .
	bats test
