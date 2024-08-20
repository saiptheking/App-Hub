#!/bin/bash

# Script to install Visual Studio Code on ARM64

# Update package list
sudo apt update

# Install dependencies
sudo apt install -y wget gpg

# Import the Microsoft GPG key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/
rm microsoft.gpg

# Enable the Visual Studio Code repository
echo "deb [arch=arm64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# Update package list again after adding the repository
sudo apt update

# Install Visual Studio Code
sudo apt install -y code

# Clean up
sudo apt clean

# Confirm installation
echo "Visual Studio Code installation completed."
code --version
