#!/bin/bash

# define variables
ROLE_NAME=franklinkim.php5-newrelic

# install dependencies
ansible-galaxy install weareinteractive.apt
ansible-galaxy install franklinkim.php5
ansible-galaxy install franklinkim.newrelic

# create role symnlink
ln -s $(pwd) /usr/share/ansible/roles/$ROLE_NAME

echo 'running playbook'
ansible-playbook -vvvv -i 'localhost,' -c local $(pwd)/tests/main.yml
