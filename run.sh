#!/bin/bash

cd ~
git clone https://github.com/ztsmith/ansible-chromebook-desktop.git
cd ansible-chromebook-desktop

./bootstrap.sh
ansible-playbook -i host setup.yml -v

nohup plank &

echo "Run 'source ~/.bashrc' for shell customizations to take affect."

exit 0
