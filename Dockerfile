FROM ubuntu:14.04
MAINTAINER Kim Joong Hyeon "karis0222@gmail.com"
ENV REFRESHED_AT 2016-10-05

SHELL ["/bin/bash", "-c"]
RUN apt-get -yqq update && apt-get -yqq install wget build-essential redis-tools
RUN wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz && tar -xzvf chruby-0.3.9.tar.gz && cd chruby-0.3.9/ && make install && cd /
RUN wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz && tar -xzvf ruby-install-0.6.0.tar.gz && cd ruby-install-0.6.0/ && make install && cd /
RUN rm -rf chruby-0.3.9 && rm -rf chruby-0.3.9.tar.gz && rm -rf ruby-install-0.6.0 && rm -rf ruby-install-0.6.0.tar.gz
RUN ruby-install ruby 2.3
RUN echo "source /usr/local/share/chruby/chruby.sh" >> ~/.bashrc && echo "source /usr/local/share/chruby/auto.sh" >> ~/.bashrc
#RUN chruby 2.3
#RUN gem install --no-rdoc --no-ri sinatra json redis
#RUN mkdir -p /opt/webapp

#EXPOSE 4567

#CMD [ "/opt/webapp/bin/webapp" ]