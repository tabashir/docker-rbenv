FROM ubuntu:14.04
MAINTAINER jakub.gluszecki@gmail.com

RUN apt-get update && \
    apt-get install -y build-essential libssl-dev libreadline6-dev curl git-core

ADD bin/ /usr/sbin/
RUN chmod 755 /usr/sbin/install-rbenv.sh

RUN adduser --disabled-password --gecos "Rails" rails

RUN install-rbenv.sh