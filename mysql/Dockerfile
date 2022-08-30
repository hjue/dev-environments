FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

RUN apt-get update && \
	apt-get -y install mysql-server 


EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]
