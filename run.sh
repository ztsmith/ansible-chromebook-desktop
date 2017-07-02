#!/bin/bash

# install git/ansible (remote bootstrap)
# git clone
# run ansible

cd ~
git clone https://github.com/ztsmith/chromebook-ubuntu-desktop.git
cd chromebook-ubuntu-desktop

ansible-playbook -i host setup.yml -v

source ~/.bashrc
exit 0
