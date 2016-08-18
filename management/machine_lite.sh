#!/usr/bin/env bash
#/usr/bin/env ansible-playbook ../provision.yml -i staging "$@" -K


# provision
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/provision.yml -i ansible_hosts "$@"  -e mode=lite -K

# deploy galaxy
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/deploy.yml -i ansible_hosts "$@" -e mode=lite