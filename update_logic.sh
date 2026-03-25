#!/bin/bash
# SailOS Safety-First Update Logic

# SAFETY SWITCHES: 
# -e: Exit immediately if a command fails
# -u: Exit if you use a variable that doesn't exist
set -eu

echo "--- Starting SailOS Update ---"

# TEST THE CONNECTION: Only proceed if Launchpad is reachable
if ping -c 1 launchpad.net &> /dev/null; then
    sudo add-apt-repository ppa:sailosdev/stable -y
    sudo apt-get update
else
    echo "Server unreachable. Skipping PPA update for now."
    exit 0 # Exit quietly so we don't scare the user
fi

# UPDATE VERSION: Only do this if the PPA part finished perfectly
sudo echo "1.1" > /etc/sailos-version

zenity --info --text="SailOS Update Complete!"
