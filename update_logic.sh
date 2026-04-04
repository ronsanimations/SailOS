#!/bin/bash

# --- 1. THE UPDATE ENGINE ---
(
echo "10" ; echo "# ⚓ Syncing with SailOS Mainframe..." ; sleep 1

# Pull the version from your version.txt file on GitHub
NEW_VER=$(curl -sL "https://raw.githubusercontent.com/ronsanimations/SailOS/refs/heads/main/version.txt")

# Save it to the local system file
echo "$NEW_VER" > /etc/sailos-version

echo "40" ; echo "# 🚀 Optimizing Animation Assets..." ; sleep 1
echo "70" ; echo "# 🎨 Polishing Interface..." ; sleep 1
echo "100" ; echo "# 🚢 Update Successful!" ; sleep 1
) | zenity --progress \
  --title="SailOS System Updater" \
  --text="<span foreground='#00f2ff' size='x-large'><b>UPDATES UNDER CONSTRUCTION</b></span>\n\n<span foreground='#bc13fe'><i>Preparing your creative environment...</i></span>" \
  --percentage=0 \
  --auto-close --width=450

# --- 2. THE DYNAMIC MESSAGE BOX ---
# This grabs the text we just saved from version.txt
FINAL_VER=$(cat /etc/sailos-version)

zenity --info \
  --title="SailOS Updated" \
  --text="<span size='large'><b>Ship Shape!</b></span>\n\nSailOS has been updated to version: <b>$FINAL_VER</b>\n\nYour creative tools are now synchronized." \
  --width=350
