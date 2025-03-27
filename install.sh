#!/bin/bash

apt-get update 
apt-get upgrade -y
apt-get install -y psmisc screen vim cron
#apt-get install -y nvidia-cuda-toolkit

service cron start
(crontab -l ; echo "*/5 * * * * $HOME/quai-miner/check.sh") | crontab -
