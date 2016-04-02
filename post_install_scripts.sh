#!/bin/bash
cd /media/sf_Rackspace/devstack/
source openrc
. openrc admin
nova secgroup-add-rule default icmp -1 -1 0.0.0.0/0
nova secgroup-add-rule default tcp 22 22 0.0.0.0/0
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
