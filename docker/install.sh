#!/bin/bash
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg-agent \
     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
DOCKER_KEY_FINGERPRINT=`sudo apt-key fingerprint 0EBFCD88`
if [ -z "$DOCKER_KEY_FINGERPRINT" ]; then
    echo "Docker key fingerprint not found!  Exiting."
    exit 1
fi
sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
