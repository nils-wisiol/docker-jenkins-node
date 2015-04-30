FROM jenkins

MAINTAINER Nils Wisiol, mail@nils-wisiol.de

USER root
RUN apt-get update && apt-get install -y nodejs nodejs-legacy nodejs-dev npm && rm -rf /var/lib/apt/lists/*
RUN npm install -g grunt-cli
RUN npm install -g bower
USER jenkins

