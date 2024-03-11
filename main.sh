#!/bin/bash
# This runs all the scripts

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

echo -e "\n${green}Running scripts..${nc}"

# Set up .bashrc
cp ~/Config/.aliases ~/Config/.functions ~/Config/.bashrc ~/

# Enable bluetooth
sudo pacman --color auto -S\
 bluez bluez-utils bluez-deprecated-tools
sudo systemctl enable bluetooth

# Install languages
sudo pacman --color auto -S\
 python go nodejs npm

# Install command line stuff
sudo pacman --color auto -S\
 git neovim neofetch tmux htop ffmpeg base-devel
git config --global core.editor "nvim"

# Install transmission
sudo pacman --color auto -S\
 transmission-gtk
xdg-mime default transmission-gtk.desktop x-scheme-handler/magnet
xdg-mime query default x-scheme-handler/magnet

# Install assorted
sudo pacman --color auto -S\
 firefox vlc

# Start manual installs
cd
mm Packages

# Install browsers
am google-chrome
am vivaldi

# Install editor
am visual-studio-code-bin

# Install yay
am yay

# Install terminals
yay -S\
 rxvt-unicode kitty alacritty

# Install assorted
yay -S\
 obsidian telegram-desktop-bin

cd Config
source ~/.bashrc

# Set up keyboard shortcuts
dconf load / < ~/Config/custom-shortcuts.conf
echo -e "\n${green}Gnome keyboard shortcuts added.${nc}"

echo -e "\n${green}All scripts have been executed..${nc}"
