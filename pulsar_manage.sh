#!/usr/bin/env bash

# start
function start {
    /usr/bin/env ansible-playbook pulsar_manage.yml -i hosts/staging "$@" -e state='start'
}

# stop
function stop {
    /usr/bin/env ansible-playbook pulsar_manage.yml -i hosts/staging "$@" -e state='stop'
}

# restart
function restart {
    /usr/bin/env ansible-playbook pulsar_manage.yml -i hosts/staging "$@" -e state='stop'
    /usr/bin/env ansible-playbook pulsar_manage.yml -i hosts/staging "$@" -e state='start'
}


while [ ! $# -eq 0 ]
do
    case "$1" in
        --help | -h)
            helpmenu
            exit
            ;;
        --start | -a)
            start
            exit
            ;;
        --stop | -b)
            stop
            exit
            ;;
        --restart | -c)
            restart
            exit
            ;;

    esac
    shift
done
