# Ansible Chromebook desktop configuration

An ansible script to set up my Chromebook with a lightweight Ubuntu development desktop.
This depends on the [crouton Linux chroot (Ubuntu 16.04 with xfce4)](https://github.com/dnschneid/crouton).

This script installs the following:

* Dev tools e.g. Atom, Node.js
* Google Chrome
* XFCE customizations for theme, font, and panels.
* Terminal customizations
* SSH key

Inspired by: https://github.com/JBKahn/provisioning-local

## To run:
This assumes a base ubuntu 16.06 LTS with xfce installed.
From an XFCE session, open the terminal and run:
```bash
bash <(wget -qO - https://github.com/ztsmith/ansible-chromebook-desktop/raw/master/run.sh)
```

## Vagrant notes
Vagrant is used to test the config.

* Default Vagrant login is `ubuntu` with password `ubuntu`
* To start xfce, wait for Vagrant to have fully finished provisioning, then login and run `startxfce4`.
* To run the setup script:
```sh
$ cd /vagrant
run-local.sh
```
* To include runtime/secret vars (e.g. ssh key), create a file named `prompt_vars.yml` with the following content:
  ```yml
  atom_github_access_token: abc
  ssh_key: |
    xxx
  ```
  These vars will be prompted for outside of Vagrant. i.e. a real Ansible run.

## xfce4 mods
This is done using the xfconf-query tool:
http://docs.xfce.org/xfce/xfconf/xfconf-query
