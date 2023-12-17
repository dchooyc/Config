#!/bin/bash
# This installs packages

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

# Python related packages
echo -e "\n${green}Installing python related packages${nc}\n"
sudo pacman --color auto -S\
 python
 
# Golang related packages
echo -e "\n${green}Installing golang related packages${nc}\n"
sudo pacman --color auto -S\
 go

# Install neovim
echo -e "\n${green}Installing neovim${nc}\n"
sudo pacman --color auto -S\
 neovim
