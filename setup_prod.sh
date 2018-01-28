#!/bin/bash

ansible-playbook ./playbooks/main.yml -i ./production/inventory --private-key=~/.ssh/unclebean_rsa -u root
