FROM ubuntu:18.04

WORKDIR /copy

COPY host-file .

WORKDIR /add

# compactando add-files -> tar -czvf 02-copy-add-workdir-run/add-files.tar.gz add-files
ADD add-files.tar.gz . 
#ADD https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png .

RUN apt-get update && apt-get install -y \
    net-tools \ 
    curl \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# COMO USAR
# docker image build -t ubuntu:curso-docker-1.0 . 
# docker container run -it --name ubuntu-dockerfile ubuntu:curso-docker-1.0