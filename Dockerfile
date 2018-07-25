FROM node:8.11.1-alpine

USER root
RUN set -x \
    && apk update\
    && apk add --no-cache git openssh libsecret\
    && bzip2

RUN mkdir -p /var/opt/app

USER node

WORKDIR /var/opt/app

CMD ["/bin/sh"]
