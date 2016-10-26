#!/usr/bin/env bash

/usr/bin/env ansible-playbook galaxy_tools.yml -i hosts/staging "$@" #--extra-vars galaxy_tools_api_key=
