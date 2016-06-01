Dockerized JSON Server
============

[![Build Status](https://travis-ci.org/William-Yeh/docker-json-server.svg?branch=master)](https://travis-ci.org/William-Yeh/docker-json-server)


## Summary

Repository name in Docker Hub: **[williamyeh/json-server](https://hub.docker.com/r/williamyeh/json-server/)**

This repository contains Dockerized [JSON Server](https://github.com/typicode/json-server), published to the public [Docker Hub](https://hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- Alpine 3

- Node.js

- JSON Server

Total image size is less than 30 MB.


### Dependencies

- [`williamyeh/ansible:mini-alpine3`](https://hub.docker.com/r/williamyeh/ansible/)


### History

- 1.0 - Initial release.


## Installation

```
$ docker pull williamyeh/json-server
```



## Usage


#### Show usage

```
$ docker run --rm williamyeh/json-server
```


#### Server example

```
$ docker run  \
      -p 3000:3000  -v `pwd`:/data  \
      williamyeh/json-server        \
      --watch db.json
```

#### More examples

Most examples documented in [JSON Server project site](https://github.com/typicode/json-server) will work.