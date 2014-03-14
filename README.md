Rails API App & MySql Dockerfile
===============


This repository contains **Dockerfile** of a Rails App for API & [MySql](http://www.mysql.com/) for [Docker](https://www.docker.io/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [glesage/ruby211](https://index.docker.io/u/glesage/ruby211/)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [build](https://index.docker.io/u/glesage/rails-api-mysql/) from public [Docker Registry](https://index.docker.io/): `docker pull glesage/rails-api-mysql`


### Usage

    docker run -i -t -p 80:80 -v /home/me/myapp:/webapp glesage/rails-api-mysql


### Stack

- Ruby 2.1.1
- Rails 4
- MySql