FROM ubuntu:20.04

RUN apt-get update && \
  apt -y install redis-server

EXPOSE 6379
CMD ["/usr/bin/redis-server"]