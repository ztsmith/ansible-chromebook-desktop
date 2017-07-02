#!/bin/bash

set -e

./bootstrap.sh
ansible-playbook -i host setup.yml -v --extra-vars @prompt_vars.yml

source ~/.bashrc
exit 0
