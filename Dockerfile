FROM ubuntu:16.04
LABEL description='awscli docker image'

RUN apt-get update -y
# Install AWS CLI
RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get install -y curl
RUN pip install --upgrade pip
RUN pip install awscli
# Install node
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt install nodejs -y