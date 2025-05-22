#!/bin/bash

MINER_START_SCRIPT="$HOME/quai-miner/run.sh"

pkill -f quai-gpu-miner
$MINER_START_SCRIPT &
