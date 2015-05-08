FROM jenkins

MAINTAINER Nils Wisiol, mail@nils-wisiol.de

USER root
RUN apt-get update && apt-get install -y nodejs nodejs-legacy nodejs-dev git npm ruby-compass && rm -rf /var/lib/apt/lists/*
RUN npm install -g grunt-cli
RUN npm install -g bower
RUN npm install -g karma
USER jenkins

