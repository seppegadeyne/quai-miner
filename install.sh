#!/bin/bash

sudo apt update 
sudo apt upgrade -y
sudo apt install -y psmisc screen vim cron
#sudo apt install -y nvidia-cuda-toolkit

sudo service cron start
(crontab -l ; echo "*/5 * * * * $HOME/quai-miner/check-miner.sh") | crontab -
