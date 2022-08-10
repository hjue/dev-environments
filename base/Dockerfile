FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y wget git gcc curl

RUN apt-get -y install mysql-server 

EXPOSE 3306

RUN apt -y install redis-server

EXPOSE 6379

