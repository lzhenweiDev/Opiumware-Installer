#!/bin/bash

ARCH=$(uname -m)

if [[ "$ARCH" == "arm64" ]]; then
    echo "Apple Silicon (ARM64) detected"
    bash <(curl -fsSL https://raw.githubusercontent.com/lzhenweiDev/Opiumware-Installer/refs/heads/main/install_arm64.sh)

elif [[ "$ARCH" == "x86_64" ]]; then
    echo "Intel Mac detected"
    bash <(curl -fsSL https://raw.githubusercontent.com/lzhenweiDev/Opiumware-Installer/refs/heads/main/install_intel.sh)

else
    echo "Architecture not supported $ARCH"
    exit 1
fi
