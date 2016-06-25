#!/usr/bin/env bash

echo "<============= updating =============>"
apt-get update
apt-get dist-upgrade -qy

echo "<============= installing extras =============>"
apt-get install linux-image-extra-$(uname -r) -qy 

echo "<============= installing docker =============>"
apt-get install docker.io -qy

echo "<============= ips =============>"
ifconfig | grep "inet addr"
