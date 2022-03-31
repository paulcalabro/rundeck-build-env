#!/bin/bash


###############################################################################
# NOTE: Install Node.js, JDK, and tools.
###############################################################################
curl \
  --fail \
  --location \
  --show-error \
  --silent \
  https://deb.nodesource.com/setup_16.x |
    bash

apt-get update
apt-get dist-upgrade --yes
apt-get install \
  --no-install-recommends \
  --yes \
  git=1:2.30.2-1ubuntu1 \
  gnupg=2.2.20-1ubuntu3 \
  lsb-release=11.1.0ubuntu2 \
  nodejs=12.21.0~dfsg-3ubuntu1 \
  openjdk-8-jdk=8u312-b07-0ubuntu1~21.04

###############################################################################
# NOTE: Install NVM.
###############################################################################
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh |
  bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 16.13.0
nvm use 16.13.0

###############################################################################
# NOTE: Install Docker.
###############################################################################
curl \
  --fail \
  --location \
  --show-error \
  --silent \
  https://download.docker.com/linux/ubuntu/gpg |
    gpg \
      --batch \
      --dearmor \
      --output /usr/share/keyrings/docker-archive-keyring.gpg \
      --yes

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" |
    tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update
apt-get install \
  --yes \
  containerd.io=1.5.11-1 \
  docker-ce=5:20.10.14~3-0~ubuntu-hirsute \
  docker-ce-cli=5:20.10.14~3-0~ubuntu-hirsute

###############################################################################
# NOTE: Build Rundeck.
###############################################################################
cd ~ || exit
test -d rundeck || git clone https://github.com/rundeck/rundeck.git
cd rundeck/ || exit
./gradlew build
