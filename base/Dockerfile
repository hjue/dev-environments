FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update
RUN apt-get install -y wget git gcc curl build-essential vim

RUN apt-get -y install mysql-server 

EXPOSE 3306

RUN apt -y install redis-server

EXPOSE 6379

