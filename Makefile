default:
	cat Makefile

check:
	make run flags="--check"

run:
	ansible-playbook $(flags) $(if $(tag),--tags $(tag),) \
		--ask-become-pass \
		--inventory inventory.ini \
		playbook.yml
