#!/bin/bash

# 1. Start the update with a Welcome Message
zenity --info --title="SailOS Update" --text="🚀 Starting the SailOS System Update..." --width=300

# 2. The Progress Bar (Simulating the 'Work')
(
echo "10" ; sleep 1
echo "# Fetching new system configurations..." ; sleep 1
echo "40" ; sleep 1
echo "# Cleaning up old cache files..." ; sleep 1
echo "70" ; sleep 1
echo "# Applying SailOS performance patches..." ; sleep 1
echo "100" ; sleep 1
) | zenity --progress --title="Updating SailOS" --text="Initializing..." --percentage=0 --auto-close

# 3. Final Success Message
zenity --info --title="Update Complete" --text="✅ SailOS has been successfully updated to the latest version. No reboot is required!" --width=300
