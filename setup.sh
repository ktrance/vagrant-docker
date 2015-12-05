#!/usr/bin/env bash

echo "<============= updating key =============>"
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-key update

echo "<============= updating sources =============>"
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main">docker.list
sudo mv -f  docker.list /etc/apt/sources.list.d/
sudo apt-get update

echo "<============= purging =============>"
sudo apt-get purge lxc-docker

echo "<============= installing headers =============>"
sudo apt-get install linux-image-extra-$(uname -r) -qy --force-yes

echo "<============= installing docker engine =============>"
sudo apt-get install docker-engine -qy --force-yes

echo "<============= updating group =============>"
sudo usermod -aG docker vagrant
