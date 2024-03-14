ARG TAG=latest

FROM alpine:$TAG 

ARG CONTAINER_NAME_ARG=container-A 

ENV CONTAINER_NAME_ENV=$CONTAINER_NAME_ARG

LABEL maintainer="Guilherme Alencar"

# DEFININDO OS ARGS
# docker image build -t alpine:curso-docker-2.0 --build-arg TAG=3.13 --build-arg CONTAINER_NAME_ARG="Container B" .