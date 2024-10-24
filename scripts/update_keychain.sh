#!/bin/bash

INSTALL_DIR="/opt/keychain"
TEMP_DIR="/tmp/keychain_update"

# Temporary directory for update
rm -rf "$TEMP_DIR"
mkdir -p "$TEMP_DIR"
cd "$TEMP_DIR" || exit 1

# Get the latest version
wget https://github.com/funtoo/keychain/archive/refs/heads/master.zip
unzip master.zip

# Replace the old version with the new one
sudo rm -rf "$INSTALL_DIR"
sudo mv keychain-master "$INSTALL_DIR"
sudo chmod +x "$INSTALL_DIR/keychain"

# Clean up temp directory
rm -rf "$TEMP_DIR"

echo "It is done....."
