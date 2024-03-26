#!/bin/bash
# Installs packages

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'
echo -e "\n${green}Running script..${nc}"

# Official packages
bluetooth="bluez-utils bluez-deprecated-tools"
languages="go nodejs npm"
commandline="neovim neofetch tmux"
assorted="noto-fonts-cjk ntfs-3g"
media="audacious vlc transmission-gtk"
virtualbox="virtualbox-host-modules-arch virtualbox"
official="$bluetooth $languages $commandline $assorted $media $virtualbox"

# AUR packages
aur_browsers="google-chrome vivaldi firefox"
aur_editors="visual-studio-code-bin"
aur_terminals="rxvt-unicode kitty alacritty"
aur_assorted="obsidian telegram-desktop-bin imagewriter drawio-desktop via-bin"
aur_packages="$aur_browsers $aur_editors $aur_terminals $aur_assorted"

# Set up shell env and install with pacman
cp ~/Config/.bashrc ~; source ~/.bashrc; shopt -s expand_aliases
sudo sed -i 's/#ParallelDownloads = 5/ParallelDownloads = 20/' /etc/pacman.conf
kimport; uuu; vvv $official; ess bluetooth; ni

# Configure git
gconfg core.editor "nvim"
gconfg user.email "dchooyc@gmail.com"
gconfg user.name "Daniel Choo"
git remote set-url origin git@github.com:dchooyc/Config.git

# Set transmission as default
xdg-mime default transmission-gtk.desktop x-scheme-handler/magnet
xdg-mime query default x-scheme-handler/magnet

# Set up virtualbox
sudo modprobe vboxdrv
sudo usermod -aG vboxusers $USER

# Install yay and install packages with yay
cd; mm Packages; amn yay; cd $CONF; yyy $aur_packages; kti

# Set ssh keys
ssh-keygen -t ed25519 -C "dchooyc@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

echo -e "\n${green}Script has completed run${nc}"
