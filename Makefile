default: ansible-playbook-check
	@echo "Run to make changes:"
	@echo "  $ make ansible-playbook"
.PHONY: default

ansible-playbook:
	ansible-playbook setup-gentoo.yaml
.PHONY: ansible-playbook

ansible-playbook-check:
	ansible-playbook setup-gentoo.yaml --check --diff
.PHONY: ansible-playbook-check
