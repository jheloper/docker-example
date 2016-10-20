FROM ubuntu:trusty
MAINTAINER Kim Joong Hyeon "karis0222@gmail.com"
ENV REFRESHED_AT 2016-10-20

RUN sed -i 's/archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
RUN apt-get -yqq update && apt-get -yqq install wget

VOLUME [ "/var/lib/tomcat7/webapps/" ]
WORKDIR /var/lib/tomcat7/webapps/

ENTRYPOINT [ "wget" ]
CMD [ "--help" ]