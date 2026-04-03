#!/bin/bash
# ---------------------------------------------------------
# ⚓ SailOS 1.0 SMART CLOUD LOGIC
# ---------------------------------------------------------

# 1. FETCH THE NEW VERSION NUMBER FROM GITHUB
NEW_VER=$(curl -sL "https://raw.githubusercontent.com/ronsanimations/SailOS/refs/heads/main/version.txt")
OLD_VER=$(cat /etc/sailos-version 2>/dev/null || echo "0.0")

echo "⚓ Current Version: $OLD_VER"
echo "⚓ Newest Version: $NEW_VER"

# 2. RUN SETUP ONLY IF VERSION HAS CHANGED (OR FIRST RUN)
if [ "$NEW_VER" != "$OLD_VER" ]; then
    echo "🚀 Updating SailOS to Version $NEW_VER..."
    
    # Fix Icons & Wallpaper (This ensures they stay fixed)
    mkdir -p /usr/share/icons/hicolor/scalable/apps/
    cp /root/veadotube-icon.png /usr/share/icons/hicolor/scalable/apps/veadotube_icon.png 2>/dev/null
    
    mkdir -p /usr/share/backgrounds/sailos
    cp /root/SailOS_wallpaper.png /usr/share/backgrounds/sailos/sailos-default.png 2>/dev/null
    
    # Update the local version file to match GitHub
    echo "$NEW_VER" > /etc/sailos-version
else
    echo "✨ You are already on the latest version ($OLD_VER)."
fi

# 3. ALWAYS RUN SYSTEM UPDATES
echo "📦 Checking for system package updates..."
apt update && apt upgrade -y

echo "✅ SailOS is up to date!"
