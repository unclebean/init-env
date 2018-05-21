#!/bin/bash

ansible-playbook ./playbooks/main.yml -i ./production/inventory --private-key=~/.ssh/developer_rsa -u root --extra-vars '@secrets/passwd.yml' --ask-vault-pass
