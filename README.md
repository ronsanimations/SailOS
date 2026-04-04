# SailOS
Custom Zorin-based OS for Animators and Sailbrush users.

#        SailOS 1.0 — Custom Linux OS

ABOUT
SailOS 1.0 is a custom Linux operating system built
on top of Zorin OS 18 (Ubuntu 24.04 base), designed
for animators, VTubers, and content creators.

INCLUDED APPS
  - Veadotube Mini   VTuber avatar software
  - OBS Studio 30.0  Screen recording and streaming
  - Discord          Chat and community

SYSTEM REQUIREMENTS
  - 64-bit processor (x86_64)
  - 4GB RAM minimum (8GB recommended)
  - 20GB free disk space
  - USB drive (8GB or larger) for live boot

HOW TO FLASH THE ISO TO USB
  RECOMMENDED: Rufus (DD Image Mode)
  --------------------------------
  1. Download Rufus from https://rufus.ie
  2. Open Rufus and select your USB drive
  3. Click SELECT and choose the SailOS .iso
  4. Set Partition scheme to GPT
  5. Set Target system to UEFI
  6. Click START
  7. When prompted, choose DD Image mode
  8. Wait for the flash to complete

  ALTERNATIVE: Balena Etcher
  --------------------------------
  1. Download Etcher from https://etcher.balena.io
  2. Click "Flash from file" and select the .iso
  3. Select your USB drive
  4. Click Flash

  NOTE: Rufus in DD mode is recommended for SailOS
  as it produces the most reliable results for
  custom ISO builds.

HOW TO INSTALL
  1. Flash the ISO to USB (see above)
  2. Boot from the USB on your computer
     (you may need to change boot order in BIOS)
  3. Select "Try or Install SailOS"
  4. Follow the on-screen installer

BUILT WITH
  - Zorin OS 18 as the base
  - Cubic Custom Ubuntu ISO Creator
  - Flatpak + Flathub for OBS and Discord
  - SDL3 compiled from source for Veadotube

CREDITS
  Built by Ron's Animations
  GitHub: https://github.com/ronsanimations/SailOS

#              SailOS 1.0 — Made with love
