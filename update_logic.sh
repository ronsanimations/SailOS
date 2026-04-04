#!/bin/bash

# --- 1. THE VISUAL PROGRESS ---
(
echo "10" ; echo "# ⚓ Connecting to SailOS Mainframe..." ; sleep 1
echo "30" ; echo "# 📦 Preparing Flatpak environment..." ; sleep 1

# --- 2. INSTALL OPENTOONZ ---
echo "50" ; echo "# 🎨 Installing OpenToonz (this may take a moment)..." 
# We use -y to auto-confirm the install
flatpak install -y flathub io.github.opentoonz.OpenToonz >/dev/null 2>&1

# --- 3. CREATE DESKTOP ICON ---
echo "80" ; echo "# 🖥️ Creating Desktop Shortcut..."
DESKTOP_DIR=$(xdg-user-dir DESKTOP)
cat > "$DESKTOP_DIR/OpenToonz.desktop" <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=OpenToonz
Comment=2D Animation Software
Exec=flatpak run io.github.opentoonz.OpenToonz
Icon=io.github.opentoonz.OpenToonz
Terminal=false
Categories=Graphics;2DGraphics;Animation;
EOF

# Make the shortcut executable so it works immediately
chmod +x "$DESKTOP_DIR/OpenToonz.desktop"

# --- 4. VERSION SYNC ---
NEW_VER=$(curl -sL "https://raw.githubusercontent.com/ronsanimations/SailOS/refs/heads/main/version.txt")
echo "$NEW_VER" > /etc/sailos-version

echo "100" ; echo "# 🚢 Update Successful!" ; sleep 1
) | zenity --progress --title="SailOS Updater" --text="Synchronizing creative tools..." --auto-close --width=400

# --- 5. THE FINAL SHIP-SHAPE BOX ---
FINAL_VER=$(cat /etc/sailos-version)
zenity --info \
  --title="SailOS Updated" \
  --text="<span size='large'><b>Ship Shape!</b></span>\n\nSailOS is now version: <b>$FINAL_VER</b>\n\n<b>OpenToonz</b> has been installed and added to your desktop. Ready to animate!" \
  --width=350
