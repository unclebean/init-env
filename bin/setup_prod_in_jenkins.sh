#!/bin/bash

ansible-playbook ./playbooks/main_ansible2.2.yml -i ./production/inventory --private-key=~/.ssh/developer_rsa -u root --extra-vars '@secrets/passwd.yml' --vault-password-file=secrets/vault.txt
