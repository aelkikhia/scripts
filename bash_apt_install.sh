#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define your list of packages here (separated by spaces)
PACKAGES=(
    "curl"
    "git"
    "vim"
    "wget"
    "tmux"
    "htop"
    "btop"
    "nodejs"
    "npm"
    "chromium-browser"
    "mkvtoolnix-gui"
    "handbrake"
    "mediainfo-gui"
    "build-essential"
    "fastfetch"
    "filezilla"
    "pkg-config" 
    "libc6-dev" 
    "libssl-dev"
    "libexpat1-dev"
    "libavcodec-dev" 
    "libgl1-mesa-dev" 
    "qt6-base-dev" 
    "zlib1g-dev"
)

echo "Updating package lists..."
sudo apt update -y

echo "Upgrading existing packages..."
sudo apt upgrade -y

echo "Installing requested applications..."
sudo apt install -y "${PACKAGES[@]}"

echo "Cleaning up residual files..."
sudo apt autoremove -y
sudo apt clean

echo "Installation complete!"
