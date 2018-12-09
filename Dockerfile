FROM ubuntu:16.04
LABEL description='awscli docker image'

RUN apt-get update -y
# Install AWS CLI
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install --upgrade pip
RUN pip install awscli
