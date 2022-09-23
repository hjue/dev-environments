FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list

RUN apt-get update \
  && apt-get install -y wget git gcc build-essential  

RUN apt-get update \
  && apt-get install -y \
  curl \
  dumb-init \
  zsh \
  htop \
  locales \
  man \
  nano \
  git \
  git-lfs \
  procps \
  openssh-client \
  sudo \
  vim.tiny \
  lsb-release \
  && git lfs install \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
  && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
  && chsh -s /bin/zsh

RUN apt-get -y install mysql-server 

EXPOSE 3306

RUN apt -y install redis-server

EXPOSE 6379

