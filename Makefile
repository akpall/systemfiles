ANSIBLE_PLAYBOOK := ansible-playbook -K setup-gentoo.yaml

default: ansible-playbook-check
	@echo "Run to make changes:"
	@echo "  $ make ansible-playbook"
.PHONY: default

ansible-playbook:
	$(ANSIBLE_PLAYBOOK)
.PHONY: ansible-playbook

ansible-playbook-check:
	$(ANSIBLE_PLAYBOOK) --check --diff
.PHONY: ansible-playbook-check
