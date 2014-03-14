# Node.js & Rails 4 environment
#
# VERSION               0.1

FROM glesage/ruby211
MAINTAINER Geoffroy Lesage

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install mysql-client mysql-devel libmysql-ruby libmysqlclient-dev

RUN gem install mysql2
RUN gem install rails-api

RUN mkdir /home/app/

# Decouple webapp from container
VOLUME ["/webapp"]

EXPOSE 80

ADD start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]