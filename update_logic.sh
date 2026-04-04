#!/bin/bash

# 1. THE PROCESS
(
echo "10" ; echo "# ⚓ Connecting to SailOS..." ; sleep 1
NEW_VER=$(curl -sL "https://raw.githubusercontent.com/ronsanimations/SailOS/refs/heads/main/version.txt")
echo "$NEW_VER" > /etc/sailos-version
echo "100" ; echo "# 🚢 Done!" ; sleep 1
) | zenity --progress --title="SailOS Updater" --text="Checking for updates..." --auto-close

# 2. THE SUCCESS BOX (ONLY)
FINAL_VER=$(cat /etc/sailos-version)
zenity --info \
  --title="Update Complete" \
  --text="SailOS has been updated to version: <b>$FINAL_VER</b>" \
  --width=300
