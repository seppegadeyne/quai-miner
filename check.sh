#!/bin/bash

LOG_FILE="$HOME/quai-miner/miner.log"
MINER_START_SCRIPT="$HOME/quai-miner/run.sh"

# Check if the log file is empty or contains "cu0 0.00" after the initial startup lines
if [ ! -s "$LOG_FILE" ] || tail -n +100 "$LOG_FILE" | sed 's/\x1b\[[0-9;]*m//g' | grep "cu0 0.00"; then
    echo "Miner is not running, hash power is zero, or log file is empty. Restarting miner..."
    pkill -f quai-gpu-miner 
    $MINER_START_SCRIPT &
fi

# Truncate the log file
truncate -s 0 "$LOG_FILE"
