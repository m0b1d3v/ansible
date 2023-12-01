default:
	cat Makefile

secrets:
	ansible-vault edit vault

check:
	make run flags="--check"

run:
	ansible-playbook $(flags) \
		--ask-become-pass \
		--ask-vault-password \
		--extra-vars @vault \
		--inventory inventory.ini \
		playbook.yml
