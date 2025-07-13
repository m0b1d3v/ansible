# Ansible

Local and remote machine provisioning.

The directory layout of all my Ansible code comes from [best practice suggestions](https://docs.ansible.com/ansible/2.8/user_guide/playbooks_best_practices.html#directory-layout).
Notable exceptions to the best practices:
- The master playbook is named `playbook.yml` instead of `site.yml` to be more explicit
- Using `inventory.ini` instead of `production`, `staging`, etc. for a limited inventory list and preferring file extensions

Once upon a time all my provisioning code was done in Puppet!
There were also some dark days were I did everything with manual checklists.

## Setting up and running this project

```shell
# Install necessary packages
sudo apt install make
sudo apt install ansible

# Test and run
make check
make ansible
```

## New server manual setup checklist

```shell
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
