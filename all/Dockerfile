FROM hjue/dev-env:java

## golang
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

## node.js
ENV NODE_VERSION 16.16.0

RUN url="https://nodejs.org/dist/v16.16.0/node-v16.16.0-linux-x64.tar.gz"; \
    wget -O node.tar.gz "$url"; \
    tar -xzf node.tar.gz -C /usr/local --strip-components=1 --no-same-owner; \
    ln -s /usr/local/bin/node /usr/local/bin/nodejs; \
    rm -f node.tar.xz; \
    node --version; \
    npm --version;


ENV YARN_VERSION 1.22.19   

RUN url="https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"; \
    wget -O yarn.tar.gz "$url"; \
    tar -xzf yarn.tar.gz -C /opt/; \
    ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn; \
    ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg; \
    rm yarn.tar.gz; \
    yarn --version;

RUN npm install -g pnpm

## php7
RUN apt-get update && \
    apt-get -y install \
        php-cli \
        php-fpm \
        php-curl \
        php-mbstring \
        php-gd \
        php-mysql \
        php-json \
        php-ldap \
        php-mime-type \
		php-pgsql \
        php-tidy \
        php-intl \
        php-xmlrpc \
        php-soap \
        php-uploadprogress \
        php-zip && \
    apt-get -y autoremove && \
    apt-get -y install --no-install-recommends imagemagick && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

## python3
RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 --no-cache-dir install --upgrade pip \
  && rm -rf /var/lib/apt/lists/*