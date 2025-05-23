#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y psmisc screen vim cron

# Start en enable cron service
systemctl enable cron
systemctl start cron

# Voeg cronjobs toe
(crontab -l 2>/dev/null || true; echo "*/5 * * * * /bin/bash $HOME/quai-miner/check.sh") | crontab -
(crontab -l 2>/dev/null || true; echo "0 */1 * * * /bin/bash $HOME/quai-miner/reboot.sh") | crontab -

