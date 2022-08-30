FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

RUN apt-get update
RUN apt-get install -y wget git gcc curl build-essential vim

RUN apt-get -y install mysql-server 

EXPOSE 3306

RUN apt -y install redis-server

EXPOSE 6379

