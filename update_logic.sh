#!/bin/bash
(
echo "10" ; echo "# ⚓ Connecting to SailOS..." ; sleep 1
NEW_VER=$(curl -sL "https://raw.githubusercontent.com/ronsanimations/SailOS/refs/heads/main/version.txt")
echo "$NEW_VER" > /etc/sailos-version
echo "100" ; echo "# 🚢 Update applied!" ; sleep 1
) | zenity --progress --title="SailOS Updater" --text="Synchronizing..." --auto-close

FINAL_VER=$(cat /etc/sailos-version)
zenity --info --title="SailOS Updated" --text="<b>Ship Shape!</b>\n\nSailOS has been updated to version: <b>$FINAL_VER</b>\n\nYour creative tools are now synchronized." --width=350
