# Docker image for JSON Server: Get a full fake REST API with zero coding in less than 30 seconds (seriously).
#
# URL: https://github.com/William-Yeh/docker-json-server
#
# Reference:  https://github.com/typicode/json-server
#
# Version     1.2
#

# pull base image
FROM node:10-alpine

MAINTAINER William Yeh <william.pjyeh@gmail.com>


RUN \
    echo "==> Install app..."                && \
    npm install -g --production json-server  && \
    \
    \
    echo "==> Remove unused temp..."         && \
    rm -rf /root/.npm                  \
           /usr/lib/node_modules/npm


# configure
EXPOSE 3000
VOLUME [ "/data" ]
WORKDIR /data

# Define default command.
ENTRYPOINT ["json-server", "--host", "0.0.0.0"]
CMD ["--help"]
