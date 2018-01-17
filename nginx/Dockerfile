FROM ubuntu:trusty
LABEL MAINTAINER="jheloper9102@gmail.com"
ENV REFRESHED_AT 2018-01-17

RUN apt-get update
RUN apt-get -y -q install nginx
RUN mkdir -p /var/www/html

ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80