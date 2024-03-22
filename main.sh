#!/bin/bash
# Installs packages

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

echo -e "\n${green}Running script..${nc}"

# Set up .bashrc
cp ~/Config/.aliases ~/Config/.functions ~/Config/.bashrc ~/
source ~/.bashrc

# Enable aliases
shopt -s expand_aliases

# Enable bluetooth
vvv bluez-utils bluez-deprecated-tools
ess bluetooth

# Install languages
vvv go nodejs npm

# Install command line stuff
vvv neovim neofetch tmux noto-fonts-cjk
git config --global core.editor "nvim"
git config --global user.email "dchooyc@gmail.com"
git config --global user.name "Daniel Choo"
git remote set-url origin git@github.com:dchooyc/Config.git
cp -r ~/Config/.conf/nvim ~/.config/

# Install media software
vvv audacious vlc

# Install transmission
vvv transmission-gtk
xdg-mime default transmission-gtk.desktop x-scheme-handler/magnet
xdg-mime query default x-scheme-handler/magnet

# Start manual installs
cd
mm Packages

# Install yay
amn yay

# Install browsers
yyy google-chrome vivaldi firefox

# Install editor
yyy visual-studio-code-bin

# Install snap
yyy snapd
ess snapd

# Install terminals
yyy rxvt-unicode kitty alacritty
cp -r ~/Config/.conf/kitty ~/.config/

# Install assorted
yyy obsidian telegram-desktop-bin imagewriter

cd ~/Config

# Set up keyboard shortcuts
dconf load / < ~/Config/custom-shortcuts.conf

# Set ssh keys
ssh-keygen -t ed25519 -C "dchooyc@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

echo -e "\n${green}Script has completed run${nc}"
