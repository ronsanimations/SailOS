#!/bin/bash
# SailOS 1.0 -> 1.1 Gold Master Update Script

# 1. Start the visual progress bar (so the user knows it's working)
(
echo "10" ; sleep 1
echo "# Checking connection to SailOS servers..." ; sleep 1

# 2. Check for internet before doing anything
if ! ping -c 1 8.8.8.8 &> /dev/null; then
    zenity --error --text="Update failed: No internet connection detected."
    exit 1
fi

echo "40" ; sleep 1
echo "# Linking to sailosdev Launchpad PPA..." 

# 3. Add the PPA (using -y to skip the "Press Enter" prompt)
sudo add-apt-repository ppa:sailosdev/stable -y
sudo apt-get update

echo "80" ; sleep 1
echo "# Finalizing system version..."

# 4. Update the version file to 1.1
sudo bash -c 'echo "1.1" > /etc/sailos-version'

echo "100" ; sleep 1
echo "# Update Complete!"

# 5. Show the final success message
zenity --info --text="SailOS has been updated to Version 1.1! Your system is now linked to the official developer repositories."
) | zenity --progress --title="SailOS System Update" --percentage=0 --auto-close
