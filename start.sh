#!/bin/bash

DATADIR="/webapp"

# Don't continue if we catch an error.
set -e

# Ensure server owns the DATADIR
chown -R www-data $DATADIR

cd $DATADIR

mysqladmin -uroot -proot create dev

bundle install
rake db:create
rake db:migrate
rails s -d -p 80
/bin/bash