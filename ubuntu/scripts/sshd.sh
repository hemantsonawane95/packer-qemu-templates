#!/bin/bash -eux

echo "UseDNS no" >> /etc/ssh/sshd_config

echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
