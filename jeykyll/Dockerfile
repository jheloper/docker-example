FROM ubuntu:trusty
MAINTAINER Kim Joong Hyeon "karis0222@gmail.com"
ENV REFRESHED_AT 2016-10-20

RUN sed -i 's/archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
RUN apt-get -yqq update && apt-get -yqq install build-essential software-properties-common && apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get -yqq update && apt-get -yqq install ruby2.3 ruby2.3-dev nodejs
RUN gem install --no-rdoc --no-ri jekyll -v 2.5.3

VOLUME /data
VOLUME /var/www/html
WORKDIR /data

ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ]