#!/bin/bash

sudo apt-get -y install \
  python-setuptools python-dev \
  aptitude \
  git \
  libxml2-dev libxslt-dev \
  software-properties-common

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

ansible-galaxy install -r requirements.yml
