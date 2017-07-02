# Ansible script to configure an Ubuntu desktop

An ansible script to set up my Chromebook crouton Linux OS (Ubuntu 16.04 with xfce4).
Inspired by: https://github.com/JBKahn/provisioning-local

## To run:
This assumes a base ubuntu 16.06 LTS with xfce installed.

```bash
wget -qO- https://github.com/JBKahn/provisioning-local/raw/master/run.sh | bash
```

## xfce4 mods
This is done using the xfconf-query tool:
http://docs.xfce.org/xfce/xfconf/xfconf-query

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
