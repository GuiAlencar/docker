FROM alpine:3.16.2

RUN apk add ansible

ENV ANSIBLE_HOST_KEY_CHECKING=False

COPY hosts .

ENTRYPOINT ["ansible", "all", "-i", "hosts"]

CMD ["-m", "ping"]

# docker image build -t ansible:alpine-1.0 .
# docker container run --rm --name ansiblE ansible:alpine-1.0