#!/usr/bin/env bash
#/usr/bin/env ansible-playbook ../management/stop.yml -i ../inventory/staging "$@"
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/management/stop.yml -i ansible_hosts "$@"
