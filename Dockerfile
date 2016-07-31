FROM ubuntu:precise
MAINTAINER Jez McKinley https://github.com/tabashir

RUN apt-get update && \
    apt-get install -y apt-utils libreadline6-dev && \
    apt-get install -y sudo build-essential libssl-dev curl git-core libffi-dev && \
    apt-get install -y libmagickcore-dev libmagickwand-dev && \
    apt-get install -y libmysqlclient-dev
RUN apt-get clean

ADD bin/install-rbenv.sh /usr/sbin/
ADD bin/init.sh /usr/sbin/

RUN chmod 755 /usr/sbin/install-rbenv.sh && \
    chmod 755 /usr/sbin/init.sh

RUN useradd -m -d /home/ruby -p ruby ruby && adduser ruby sudo && chsh -s /bin/bash ruby

RUN init.sh
RUN install-rbenv.sh

USER ruby
ENV HOME /home/ruby
ENV PATH /home/ruby/.rbenv/shims:/home/ruby/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN sudo mkdir /app && sudo chown ruby:ruby /app # placeholder for application code
