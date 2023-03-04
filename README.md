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

## New server manual setup checklist

```bash
# Add provisioning user
ssh <server>
adduser <user>
usermod -aG sudo <user>

# Allow Ansible dry-run
apt update
apt upgrade
apt install python-apt

# Install SSH key
exit
ssh-copy-id <user>@<server>
```
