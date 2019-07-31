#!/bin/bash

ansible-playbook ./playbooks/main.yml -i ./production/init-node-inventory --private-key=~/.ssh/developer_rsa -u root --extra-vars '@secrets/passwd.yml' --vault-password-file=secrets/vault.txt
