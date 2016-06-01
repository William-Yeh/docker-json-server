# Docker image for JSON Server: Get a full fake REST API with zero coding in less than 30 seconds (seriously).
#
# URL: https://github.com/William-Yeh/docker-json-server
#
# Reference:  https://github.com/typicode/json-server
#
# Version     1.0
#

# pull base image
FROM williamyeh/ansible:mini-alpine3
#FROM scratch
#FROM busybox
#FROM progrium/busybox
#FROM alpine:3.3
#FROM debian:jessie

MAINTAINER William Yeh <william.pjyeh@gmail.com>


# configure
EXPOSE 3000
VOLUME [ "/data" ]
WORKDIR /data

# Define default command.
ENTRYPOINT ["json-server"]
CMD ["--help"]