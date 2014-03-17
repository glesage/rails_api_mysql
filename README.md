Rails App with Ruby 2.1.1 & NodeJS
==================================

### (+ mysql & Sqlite for adapters)

This Dockerfile is published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [glesage/nodejs-rails4](https://index.docker.io/u/glesage/nodejs-rails4)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [build](https://index.docker.io/u/glesage/rails-api-mysql) from public [Docker Registry](https://index.docker.io/): `docker pull glesage/rails-api-mysql`


### Usage

    docker run -d -p 3000:80 -v /home/me/webapp:/webapp glesage/rails-api-mysql
    docker run -t -i -p 3000:80 -v /home/me/webapp:/webapp glesage/rails-api-mysql /bin/bash


### Stack

- Ruby 2.1.1
- NodeJS
- Rails 4
- MySql
