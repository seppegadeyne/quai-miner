#!/bin/bash

MINER_START_SCRIPT="$HOME/quai-miner/run.sh"

# Check if killall command is available, if not install it
if ! command -v killall &> /dev/null; then
    echo "killall command not found. Installing..."
    apt-get update && apt-get install -y psmisc
fi

killall -9 quai-gpu-miner-nvidia-latest
$MINER_START_SCRIPT &

