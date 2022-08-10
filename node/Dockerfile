FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y wget git gcc curl

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

CMD [ "node" ]