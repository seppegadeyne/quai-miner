# Gebruik officiële NVIDIA image met CUDA 12.6 + Ubuntu 24.04
FROM nvidia/cuda:12.6.0-base-ubuntu24.04

# Om interactieve prompts te vermijden
ENV DEBIAN_FRONTEND=noninteractive

# Installeer benodigde packages
RUN apt-get update && \
    apt-get install -y git tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/Brussels /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

# Clone jouw miner repo
RUN git clone https://github.com/seppegadeyne/quai-miner /root/quai-miner

# Ga naar de juiste map en voer installatie uit
WORKDIR /root/quai-miner
RUN chmod +x install.sh check.sh run.sh && ./install.sh

# Start automatisch met check.sh
CMD ["./check.sh"]
