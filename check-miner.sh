#!/bin/bash

LOG_FILE="$HOME/quai-miner/miner.log"
MINER_START_SCRIPT="$HOME/quai-miner/run-quai-miner.sh"

# Check if killall command is available, if not install it
if ! command -v killall &> /dev/null; then
    echo "killall command not found. Installing..."
    sudo apt-get update && sudo apt-get install -y psmisc
fi

# Check if the log file contains "cu0 0.00"
if grep -q "cu0 0.00" "$LOG_FILE"; then
    echo "Miner is not running or hash power is zero. Restarting miner..."
    killall -9 quai-gpu-miner-nvidia
    $MINER_START_SCRIPT &
fi

# Truncate the log file
truncate -s 0 "$LOG_FILE"