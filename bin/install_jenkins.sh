#!/bin/bash

ansible-playbook ./playbooks/main.yml -i ./production/jenkins-inventory --private-key=~/.ssh/developer_rsa -u deploy --extra-vars '@secrets/passwd.yml' --vault-password-file=secrets/vault.txt