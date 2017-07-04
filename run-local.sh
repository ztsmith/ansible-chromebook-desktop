#!/bin/bash

set -e

./bootstrap.sh
ansible-playbook -i host setup.yml -v --extra-vars @prompt_vars.yml

nohup plank &

echo "Run 'source ~/.bashrc' for shell customizations to take affect."

exit 0
