FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y wget git gcc curl

ENV PATH /usr/local/go/bin:$PATH

ENV GOLANG_VERSION 1.18.4

RUN url="https://go.dev/dl/go$GOLANG_VERSION.linux-amd64.tar.gz"; \
  wget -O go.tgz "$url"; \
  tar -C /usr/local -xzf go.tgz; \
  rm go.tgz; \
  go version

ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH
