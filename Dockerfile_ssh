FROM ubuntu:trusty
MAINTAINER Kim Joong Hyeon "karis0222@gmail.com"
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echoo "root:passsword" | chpasswd
EXPOSE 22