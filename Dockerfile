FROM node:6.9.1

MAINTAINER Thiago Paes <mrprompt@gmail.com>

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update && apt-get install -y openjdk-7-jdk bzip2 python2.7-dev python-pip
RUN pip install --upgrade awscli deploybot-cli
RUN npm install -g --progress=false phantomjs

