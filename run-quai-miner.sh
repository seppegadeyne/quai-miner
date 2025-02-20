#!/bin/bash

LOG_FILE="$HOME/quai-miner/miner.log"
MINER_EXECUTABLE="$HOME/quai-miner/quai-gpu-miner-nvidia"

# Check if the log file exists, if so, empty it
if [ -f "$LOG_FILE" ]; then
    > "$LOG_FILE"
fi

$MINER_EXECUTABLE -U -P stratum://suomi.straffesites.be:3333 >> "$LOG_FILE" 2>&1 &
