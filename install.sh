#!/bin/bash

sudo apt update 
sudo apt upgrade -y
sudo apt install -y nvidia-cuda-toolkit psmisc screen vim

(crontab -l ; echo "*/5 * * * * $HOME/quai-miner/check-miner.sh") | crontab -