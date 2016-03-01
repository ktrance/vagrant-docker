#!/usr/bin/env bash

echo "<============= updating key =============>"
sudo apt-get update
apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "<============= updating sources =============>"
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > docker.list
sudo mv -f  docker.list /etc/apt/sources.list.d/
sudo apt-get update

echo "<============= purging =============>"
sudo apt-get purge lxc-docker

echo "<============= installing headers =============>"
sudo apt-get install linux-image-extra-$(uname -r) -qy --force-yes

echo "<============= installing docker-engine =============>"
sudo apt-get install docker-engine -qy --force-yes

echo "<============= installing docker-compose =============>"
curl -s -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "<============= updating group =============>"
sudo usermod -aG docker vagrant
