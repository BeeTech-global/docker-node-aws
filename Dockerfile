FROM node:6.9.1

MAINTAINER Thiago Paes <mrprompt@gmail.com>

# Configure shell to bash by default
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Update apt and install AWS Client and others stuffs
RUN apt-get update && apt-get install -y awscli wget

# Install Heroku Client
RUN wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh
