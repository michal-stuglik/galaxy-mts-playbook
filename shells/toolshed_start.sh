#!/usr/bin/env bash
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/management/start_toolshed.yml -i ansible_hosts "$@"

