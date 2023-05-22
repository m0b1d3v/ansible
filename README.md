# Ansible

Desktop and server provisioning.

Currently only desktop provisioning is run from this repository.
All of my remote servers for Git, Minecraft, DnD Foundry, testing, and websites have been sunset.
(Un)fortunately it is easier to spend my money on hosted platforms than it is to spend my time on servers right now.

The directory layout of all my Ansible code comes from [best practice suggestions](https://docs.ansible.com/ansible/2.8/user_guide/playbooks_best_practices.html#directory-layout).
Notable exceptions to the best practices:
- The master playbook is named `playbook.yml` instead of `site.yml` to be more explicit
- Using `inventory.ini` instead of `production`, `staging`, etc. for a limited inventory list and preferring file extensions

Once upon a time all my provisioning code was done in Puppet!
There were also some dark days were I did everything with manual checklists.

## Setting up and running this project

```shell
# Install necessary packages
sudo apt install git
sudo apt install make
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

# Clone, test, and run
GIT_SSH_COMMAND='ssh -i ~/.ssh/keyForGit' git clone git@github.com:mobi/ansible.git
cd ansible
make ansible-check
make ansible
```

## New server manual setup checklist

```bash
# Add provisioning user
ssh <server>
adduser <user>
usermod -aG sudo <user>

# Allow Ansible dry-run
apt update
apt upgrade

# Install SSH key
exit
ssh-copy-id <user>@<server>
```
