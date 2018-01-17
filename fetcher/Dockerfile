FROM ubuntu:trusty
LABEL MAINTAINER="jheloper9102@gmail.com"
ENV REFRESHED_AT 2018-01-17

RUN sed -i 's/archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
RUN apt-get -yqq update && apt-get -yqq install wget

VOLUME [ "/var/lib/tomcat7/webapps/" ]
WORKDIR /var/lib/tomcat7/webapps/

ENTRYPOINT [ "wget" ]
CMD [ "--help" ]