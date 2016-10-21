FROM node:5.10-slim

RUN apt-get update && apt-get -y install bzip2

RUN useradd -m -s /bin/bash node
RUN echo 'node:password' | chpasswd
RUN mkdir -p /var/opt/app

USER node

WORKDIR /var/opt/app

CMD ["/bin/bash"]
