bash#!/bin/bash

# Define your list of snap applications here
APPS=(
    "vlc"
    "chromium"
    "code --classic"
    "postman"
    "sublime-text --classic"
    "plex-desktop"
)

echo "Updating system package list..."
sudo apt update

echo "Ensuring snapd is installed..."
sudo apt install -y snapd

echo "Starting application installation..."
for APP in "${APPS[@]}"; do
    echo "Installing ${APP}..."
    sudo snap install $APP
done

echo "All snap applications processed successfully!"
