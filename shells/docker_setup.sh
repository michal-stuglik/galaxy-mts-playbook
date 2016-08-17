#!/usr/bin/env bash

# docker setup start/run

# docker run --name ubuntu16 ubuntu:16.04 #?
# docker run --name ubuntu12 ubuntu:12.04 #?

#docker start ubuntu12 ubuntu16

# docker recipe for re-running with image/container with ports!
# as only 'docker run' can assign ports:it fixes ports for image instance

#    docker stop container01
#    docker commit container01 image01
#    docker rm container01
#    docker run -d -P --name container01 image01



# pre-provision
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/pre-provision.yml -i ansible_hosts "$@"

# provision
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/provision.yml -i ansible_hosts "$@"  -e mode=lite

# deploy galaxy
/usr/bin/env ansible-playbook ../galaxy-mts-playbook/deploy.yml -i ansible_hosts "$@" --e mode=lite

# deploy tools
