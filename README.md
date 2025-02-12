# Quai miner

[quai-gpu-miner](https://github.com/dominant-strategies/quai-gpu-miner) - A GPU miner for Quai Network, providing efficient mining capabilities using your GPU hardware.

## Overview

This repository contains scripts and tools to set up and manage a GPU miner for the Quai Network. The miner is designed to run efficiently on NVIDIA GPUs and includes automated checks and restarts to ensure continuous operation.

## Files

- `quai-gpu-miner-nvidia`: The GPU miner executable for NVIDIA GPUs.
- `run-quai-miner.sh`: Script to start the GPU miner.
- `check-miner.sh`: Script to check the miner's status and restart it if necessary.
- `install.sh`: Script to install necessary dependencies and set up a cron job for monitoring the miner.
- `README.md`: This file, providing an overview and instructions.

## Installation

To install the necessary dependencies and set up the miner, run the `install.sh` script:

```sh
./install.sh
```
