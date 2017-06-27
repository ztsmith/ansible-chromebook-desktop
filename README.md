# Ansible script to configure an Ubuntu desktop

An ansible script to set up my Chromebook crouton Linux OS (Ubuntu 16.04 with xfce4).
Inspired by: https://github.com/JBKahn/provisioning-local

## To run:
```bash
wget -qO- https://github.com/JBKahn/provisioning-local/raw/master/run.sh | bash
```

## Vagrant notes
Vagrant is used to validate the config.

* Default Vagrant login is `ubuntu` with password `ubuntu`
* To start xfce run `sudo startx`
* To include runtime/secret vars (e.g. ssh key), create a file named `prompt_vars.yml` with the following content:
  ```yml
  atom_github_access_token: abc
  ssh_key: |
    xxx
  ```
  These vars will be prompted for outside of Vagrant. i.e. a real Ansible run.
