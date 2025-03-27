#!/bin/bash

cd ~ && \
export DEBIAN_FRONTEND=noninteractive && \
apt-get update && \
ln -fs /usr/share/zoneinfo/Europe/Brussels /etc/localtime && \
apt-get install -y tzdata git && \
dpkg-reconfigure -f noninteractive tzdata && \
git clone https://github.com/seppegadeyne/quai-miner && \
cd ~/quai-miner && \
./install.sh && \
./check.sh
