FROM ubuntu:20.04

RUN apt-get update && \
	apt-get -y install mysql-server && \
  apt -y install redis-server

EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]