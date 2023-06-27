#!/bin/sh

sudo apt install git micro zram-tools neofetch exa

# Sway installation for Debian Bookworm/Testing
sudo nala install sway waybar swaylock swayidle swaybg

# implements the KDE idle protocol
sudo nala install swayidle

# Appearance manager
sudo nala install lxappearance

# Networking etc
sudo nala install policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo nala install thunar thunar-archive-plugin thunar-volman file-roller

# terminal
sudo nala install xfce4-terminal

# protocols
sudo nala install mtools dosfstools acpi acpid avahi-daemon gvfs-backends
sudo systemctl enable acpid
sudo systemctl enable avahi-daemon

# grim (screenshots in Wayland) and slurp (select a region in wayland) - kinda like scrot
sudo nala install grim slurp

# mako - like dunst
sudo nala install mako-notifier

# wofi - confusingly similar to rofi
sudo nala install wofi

# wayland protocols library
sudo nala install wayland-protocols

# backwards compatible 
sudo nala install xwayland

# nvidia you may need libnvidia-egl-wayland-dev

# GTK layer shell
sudo nala install libgtk-layer-shell-dev

# Support for the screenshot, screencast, and possibly remote-desktop xdg-desktop-portal interfaces for wlroots based compositors. 
sudo nala install xdg-desktop-portal-wlr

# GTK layer shell - wl-clipboard implements two Wayland clipboard utilities, wl-copy and wl-paste
# dex executes .desktop files - jq = lightweight and flexible command-line JSON processor
sudo nala install brightnessctl wl-clipboard dex jq

# text editor
sudo nala install l3afpad

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# build essential
sudo nala install build-essential

# Dependencies for ly
sudo nala install libpam0g-dev libxcb-xkb-dev

# ly install
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
sudo make install installsystemd
sudo systemctl enable ly

sudo reboot




