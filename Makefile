# Transparently calls other make targets without cluttering console
subTask = @make --no-print-directory

# When run with no arguments, `make` will just output the file contents
default:
	cat Makefile

# Do a dry-run of Ansible to ensure nothing catastrophically unexpected happens
ansible-check:
	$(subTask) ansible flags="--check"

# Run Ansible
ansible:
	ansible-playbook $(flags) \
		--ask-become-pass \
		--inventory inventory.ini \
		--verbose \
		playbook.yml
