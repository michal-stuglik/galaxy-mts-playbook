#!/usr/bin/env bash
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/management/stop_toolshed.yml -i ansible_hosts "$@"
