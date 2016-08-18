#!/usr/bin/env bash

# start
/usr/bin/env ansible-playbook galaxy_manage.yml -i hosts/staging "$@" -e state='start'

# stop
/usr/bin/env ansible-playbook galaxy_manage.yml -i hosts/staging "$@" -e state='stop'

# restart
/usr/bin/env ansible-playbook galaxy_manage.yml -i hosts/staging "$@" -e state='stop'
/usr/bin/env ansible-playbook galaxy_manage.yml -i hosts/staging "$@" -e state='start'

