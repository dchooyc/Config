#!/bin/bash
# This installs packages

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

# Install languages
echo -e "\n${green}Installing languages related packages${nc}\n"
sudo pacman --color auto -S\
 python go nodejs npm

# Install command line stuff
echo -e "\n${green}Installing command line stuff${nc}\n"
sudo pacman --color auto -S\
 git neovim neofetch tmux htop ffmpeg

# Install browsers
echo -e "\n${green}Installing browsers${nc}\n"
sudo pacman --color auto -S\
 google-chrome firefox vivaldi tor-browser-bin

# Install terminals
echo -e "\n${green}Installing terminals${nc}\n"
sudo pacman --color auto -S\
 rxvt-unicode kitty alacritty

# Install assorted
echo -e "\n${green}Installing assorted${nc}\n"
sudo pacman --color auto -S\
 transmission-gtk cheese expressvpn pragha vlc \
 obsidian spotify visual-studio-code-bin telegram-desktop-bin
