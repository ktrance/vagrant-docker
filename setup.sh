#!/usr/bin/env bash

echo "<============= updating =============>"
apt-get update
apt-get dist-upgrade -qy

echo "<============= installing extras =============>"
apt-get install linux-image-extra-$(uname -r) -qy 

echo "<============= installing docker =============>"
apt-get install docker.io -qy

echo "<============= installing docker-compose =============>"
apt-get install docker-compose -qy

echo "<============= ips =============>"
ifconfig | grep "inet addr"
