# Rails 4 - with Ruby 2.1.1 & NodeJS
# (+ mysql for adapters)
#
# VERSION               0.1

FROM glesage/nodejs-rails4
MAINTAINER Geoffroy Lesage


RUN export DEBIAN_FRONTEND=noninteractive

#
# MySql
#
RUN echo mysql-server mysql-server/root_password password root | sudo debconf-set-selections
RUN echo mysql-server mysql-server/root_password_again password root | sudo debconf-set-selections
RUN apt-get -y install mysql-server libmysqlclient-dev 


# Decouple webapp from container
VOLUME ["/webapp"]

ADD start.sh /start.sh
RUN chmod 755 /start.sh

EXPOSE 3000

CMD ["/start.sh"]