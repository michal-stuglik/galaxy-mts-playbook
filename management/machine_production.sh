#!/usr/bin/env bash

# provision
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/provision.yml -i ansible_hosts "$@"  -e mode=production -K

# deploy galaxy
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/deploy.yml -i ansible_hosts "$@" -e mode=production
