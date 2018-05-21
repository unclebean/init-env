#!/bin/bash
# please note: after setup production environment should use update_prod.sh to update env because root user would be block through ssh
ansible-playbook ./playbooks/main.yml -i ./production/inventory --private-key=~/.ssh/developer_rsa -u deploy --extra-vars '@secrets/passwd.yml' --ask-vault-pass
