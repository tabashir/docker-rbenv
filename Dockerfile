FROM debian:jessie
MAINTAINER jakub.gluszecki@gmail.com

RUN apt-get update && \
    apt-get install -y sudo build-essential libssl-dev libreadline6-dev curl git-core && \
    apt-get clean

ADD bin/ /usr/sbin/
RUN chmod 755 /usr/sbin/install-rbenv.sh && \
    chmod 755 /usr/sbin/init.sh

RUN useradd -m -d /home/ruby -p ruby ruby && adduser ruby sudo && chsh -s /bin/bash ruby

RUN init.sh
RUN install-rbenv.sh

USER ruby
ENV HOME /home/ruby
ENV PATH /home/ruby/.rbenv/shims:/home/ruby/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
