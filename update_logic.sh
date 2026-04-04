#!/bin/bash

# --- 1. THE WELCOME MESSAGE (Only shows when this script is run) ---
clear
echo -e "\e[1;34m*****************************************************\e[0m"
echo -e "          ⚓ \e[1;97mWELCOME TO SailOS\e[0m ⚓"
echo -e "    \e[3m\"The Ultimate OS for Animators & Creators\"\e[0m"
echo -e "\e[1;34m*****************************************************\e[0m"
echo -e " ℹ️  Current System Version: $(cat /etc/sailos-version 2>/dev/null || echo "1.0")"
echo -e "\e[1;34m*****************************************************\e[0m"
echo ""
echo "Starting Manual Update... Please wait."
sleep 2

# --- 2. THE UPDATE LOGIC ---
(
echo "10" ; echo "# ⚓ Connecting to SailOS Mainframe..." ; sleep 1
# Grabbing the version from your separate version.txt
NEW_VER=$(curl -sL "https://raw.githubusercontent.com/ronsanimations/SailOS/refs/heads/main/version.txt")
echo "$NEW_VER" > /etc/sailos-version
echo "100" ; echo "# 🚢 Update applied!" ; sleep 1
) | zenity --progress --title="SailOS Updater" --text="Synchronizing..." --auto-close

# --- 3. THE SUCCESS BOX ---
FINAL_VER=$(cat /etc/sailos-version)
zenity --info --title="Update Complete" --text="SailOS is now version: <b>$FINAL_VER</b>" --width=350
