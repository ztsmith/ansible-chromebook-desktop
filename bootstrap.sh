#!/bin/bash

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install aptitude ansible

ansible-galaxy install -r requirements.yml
