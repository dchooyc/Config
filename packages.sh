#!/bin/bash
# This installs arch packages

# Set colour for echo
green='\033[0;32m'

# Python related packages
echo -e "\n${green}Installing python related packages\n"
sudo pacman -S\
 python python-pip

# Golang related packages
echo -e "\n${green}Installing golang related packages\n"
sudo pacman -S\
 go