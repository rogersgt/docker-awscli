FROM ubuntu:16.04
LABEL description='awscli docker image'

RUN apt-get update -y
# Install AWS CLI
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install --upgrade pip
RUN pip install awscli
# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -y && apt-get install -y yarn