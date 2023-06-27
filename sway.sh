#!/bin/sh

sudo apt install -y nala git micro zram-tools neofetch exa

# Sway installation for Debian Bookworm/Testing
sudo nala install -y sway waybar swaylock swayidle swaybg

# implements the KDE idle protocol
sudo nala install -y swayidle

# Appearance manager
sudo nala install -y lxappearance

# Networking etc
sudo nala install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo nala install -y thunar thunar-archive-plugin thunar-volman file-roller

# terminal
sudo nala install -y xfce4-terminal

# protocols
sudo nala install -y mtools dosfstools acpi acpid avahi-daemon gvfs-backends
sudo systemctl enable acpid
sudo systemctl enable avahi-daemon

# grim (screenshots in Wayland) and slurp (select a region in wayland) - kinda like scrot
sudo nala install -y grim slurp

# mako - like dunst
sudo nala install -y mako-notifier

# wofi - confusingly similar to rofi
sudo nala install -y wofi

# wayland protocols library
sudo nala install -y wayland-protocols

# backwards compatible 
sudo nala install -y xwayland

# nvidia you may need libnvidia-egl-wayland-dev

# GTK layer shell
sudo nala install -y libgtk-layer-shell-dev

# Support for the screenshot, screencast, and possibly remote-desktop xdg-desktop-portal interfaces for wlroots based compositors. 
sudo nala install -y xdg-desktop-portal-wlr

# GTK layer shell - wl-clipboard implements two Wayland clipboard utilities, wl-copy and wl-paste
# dex executes .desktop files - jq = lightweight and flexible command-line JSON processor
sudo nala install -y light brightnessctl wl-clipboard dex jq

# text editor
sudo nala install -y l3afpad

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# build essential
sudo nala install -y build-essential

# Dependencies for ly
sudo nala install -y libpam0g-dev libxcb-xkb-dev

DIR_GIT="${HOME}/git"
mkdir -p "${DIR_GIT}"

# ly install
git -C "${DIR_GIT}" clone --recurse-submodules https://github.com/fairyglade/ly
cd "${DIR_GIT}/ly"

make
sudo make install installsystemd
sudo systemctl enable ly

sudo reboot




