#!/usr/bin/env bash

# provision
#/usr/bin/env ansible-playbook galaxy_provision.yml -i hosts/staging "$@"  -K

# provision
/usr/bin/env ansible-playbook galaxy_provision.yml -i hosts/staging "$@"  -e mode=production -K
