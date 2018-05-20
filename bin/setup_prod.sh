#!/bin/bash

ansible-playbook ./playbooks/main.yml -i ./production/inventory --private-key=~/.ssh/unclebean_rsa -u root --extra-vars '@secrets/passwd.yml' --vault-password-file=secrets/vault.txt
