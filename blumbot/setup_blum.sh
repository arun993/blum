#!/bin/bash

# Function to print text in blue
print_blue() {
    echo -e "\033[34m$1\033[0m"
}

# Clone repository
print_blue "Cloning Files..."
sudo apt-get update && sudo apt-get install -y git && git clone https://github.com/arun993/blum.git && cd blum/blumbot

# Take user input for query IDs
print_blue "Enter your Query IDs line by line (Press Ctrl+D to finish):"
cat > data.txt

# Install Node.js and npm
print_blue "Installing Node.js..."
sudo apt update && sudo apt install -y nodejs npm

# Install Python3
print_blue "Installing Python3..."
sudo apt-get install -y python3

# Run the Node.js script
print_blue "Running .js script..."
npm install && node blum.js
