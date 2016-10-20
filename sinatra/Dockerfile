FROM ubuntu:trusty
MAINTAINER Kim Joong Hyeon "karis0222@gmail.com"
ENV REFRESHED_AT 2016-10-20

RUN apt-get -yqq update && apt-get -yqq install build-essential software-properties-common && apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get -yqq update && apt-get -yqq install ruby2.3 ruby2.3-dev redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis
RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD [ "/opt/webapp/bin/webapp" ]