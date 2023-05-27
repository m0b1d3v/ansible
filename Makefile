default:
	cat Makefile

secrets:
	ansible-vault edit vault

check:
	make run flags="--check"

run:
	ansible-playbook $(flags) \
		--become-password-file secrets.pass \
		--vault-password-file secrets.pass \
		--extra-vars @vault \
		--inventory inventory.ini \
		playbook.yml
