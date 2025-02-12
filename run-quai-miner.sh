#!/bin/bash

LOG_FILE="$HOME/quai-miner/miner.log"

# Check if the log file exists, if so, empty it
if [ -f "$LOG_FILE" ]; then
    > "$LOG_FILE"
fi

./quai-gpu-miner-nvidia -U -P stratum://koala.straffesites.be:3333 >> "$LOG_FILE" 2>&1 &