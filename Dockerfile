# Node.js & Rails 4 environment
#
# VERSION               0.1

FROM glesage/ruby211
MAINTAINER Geoffroy Lesage

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN echo mysql-server mysql-server/root_password password root | debconf-set-selections;\
  	echo mysql-server mysql-server/root_password_again password root | debconf-set-selections;\
  	apt-get install -y mysql-server mysql-client libmysql-ruby libmysqlclient-dev mysql-client-5.5

RUN gem install bundle
RUN gem install rails
RUN gem install mysql2
RUN gem install rails-api

RUN mkdir /home/app/

# Decouple webapp from container
VOLUME ["/webapp"]

EXPOSE 3000

ADD start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]