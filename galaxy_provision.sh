#!/usr/bin/env bash

# provision
/usr/bin/env ansible-playbook galaxy_provision.yml -i hosts/staging "$@"  #-K
