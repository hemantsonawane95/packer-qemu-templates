#!/bin/sh

# install cloud-init
export DEBIAN_FRONTEND=noninteractive && apt-get -y install cloud-init

#hostname will be managed by cloud-init, but the current value will not be removed
HOSTNAME=`hostname`
sed -i "/${HOSTNAME}/d" /etc/hosts
