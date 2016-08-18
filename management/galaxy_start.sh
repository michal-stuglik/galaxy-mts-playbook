#!/usr/bin/env bash
#/usr/bin/env ansible-playbook ../management/start.yml -i staging "$@"
#/usr/bin/env ansible-playbook ../../galaxy-mts-playbook/management/start.yml -i staging "$@"
/usr/bin/env ansible-playbook start.yml -i ../hosts/staging "$@"

