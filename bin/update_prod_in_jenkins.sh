#!/bin/bash
# please note: after setup production environment should use update_prod.sh to update env because root user would be block through ssh
ansible-playbook ./playbooks/main_ansible2.2.yml -i ./production/inventory --private-key=/home/jenkins/.ssh/developer_rsa -u deploy --extra-vars '@secrets/passwd.yml' --vault-password-file=secrets/vault.txt
