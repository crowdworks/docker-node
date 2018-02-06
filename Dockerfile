FROM node:9.5.0-alpine

USER root
RUN set -x \
    && apk add --no-cache \
    && bzip2

RUN mkdir -p /var/opt/app

USER node

WORKDIR /var/opt/app

CMD ["/bin/sh"]
