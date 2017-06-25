#!/bin/bash

# TODO: run remote version of bootstrap script

cd ~
git clone https://github.com/ztsmith/chromebook-ubuntu-desktop.git
cd chromebook-ubuntu-desktop

ansible-playbook -i host setup.yml --module-path ./ansible_modules

source ~/.bashrc
exit 0
