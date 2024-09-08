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

# Install npm dependencies
print_blue "Installing npm dependencies..."
npm install

# Install screen if not already installed
print_blue "Installing screen..."
sudo apt-get install -y screen

# Run the node script in a new screen session without auto-detaching
print_blue "Running script... (Press Ctrl+A+D to detach the screen and use 'screen -r blum-bot' to reattach)"

# Create a new screen session named 'blum-bot' and run the script inside it
screen -S blum-bot node blum.js
