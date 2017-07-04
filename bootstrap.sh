#!/bin/bash

sudo apt-get -y install git aptitude \
  software-properties-common python-software-properties

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible
