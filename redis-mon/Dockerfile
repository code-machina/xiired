FROM ubuntu:16.04
MAINTAINER code-machina <gbkim1988@gmail.com>

# Referenced : http://experiences.tistory.com/7

RUN apt-get update

RUN apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
ENV REDIS_SETTING=redis://192.168.3.169:6379
RUN apt-get install ruby-full
RUN cd /opt
RUN git clone https://github.com/junegunn/redis-stat.git
RUN cd /opt/redis-stat/
RUN redis-stat $REDIS_SETTING --server=9277 --verbose 1 --daemon
EXPOSE 9277