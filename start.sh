#!/bin/bash

DATADIR="/webapp"

# Don't continue if we catch an error.
set -e

# Ensure server owns the DATADIR
chown -R www-data $DATADIR

cd $DATADIR

bundle install
rails s -d
/bin/bash
