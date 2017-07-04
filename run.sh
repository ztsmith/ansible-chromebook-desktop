#!/bin/bash

set -e

bash <(wget -qO - https://github.com/ztsmith/ansible-chromebook-desktop/raw/master/bootstrap.sh)

cd ~
git clone https://github.com/ztsmith/ansible-chromebook-desktop.git
cd ansible-chromebook-desktop

ansible-galaxy install -r requirements.yml
ansible-playbook -i host setup.yml -v

nohup plank &

echo "Run 'source ~/.bashrc' for shell customizations to take affect."

exit 0
