#!/bin/bash
# ---------------------------------------------------------
# ⚓ SailOS 1.0 GRAPHICAL CLOUD LOGIC (GitHub Side)
# ---------------------------------------------------------

# 1. START THE PROGRESS BAR
(
echo "10" ; echo "# Connecting to SailOS Cloud..." ; sleep 1
echo "30" ; echo "# Fetching Animator Tools..." ; sleep 1

# --- PLACE YOUR UPDATES HERE ---
# Example: Syncing the latest version number
NEW_VER=$(curl -sL "https://raw.githubusercontent.com/ronsanimations/SailOS/refs/heads/main/version.txt")
echo "$NEW_VER" > /etc/sailos-version

echo "60" ; echo "# Applying System Themes & Icons..." ; sleep 1
# Fix Icons & Wallpaper if they are in /root/
mkdir -p /usr/share/icons/hicolor/scalable/apps/
cp /root/veadotube-icon.png /usr/share/icons/hicolor/scalable/apps/veadotube_icon.png 2>/dev/null
mkdir -p /usr/share/backgrounds/sailos
cp /root/SailOS_wallpaper.png /usr/share/backgrounds/sailos/sailos-default.png 2>/dev/null

echo "90" ; echo "# Finalizing Configuration..." ; sleep 1
echo "100" ; echo "# SailOS is now up to date!" ; sleep 1
) | zenity --progress --title="SailOS Updater" --text="Initializing..." --percentage=0 --auto-close

# 2. SHOW THE "UNDER CONSTRUCTION" MESSAGE
zenity --info \
  --title="SailOS System" \
  --text="⚓ SailOS 1.0 is under construction and will be complete in the next update.\n\nThank you for using SailOS for your animations!" \
  --width=350

# 3. OPTIONAL: REFRESH THE TERMINAL BRANDING
cat > /etc/motd <<EOF
*****************************************************
          ⚓ WELCOME TO SailOS ⚓
    "The Ultimate OS for Animators & Creators"
*****************************************************
 ℹ️  Version: \$(cat /etc/sailos-version 2>/dev/null || echo "1.0")
*****************************************************
EOF
