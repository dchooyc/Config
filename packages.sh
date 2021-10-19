#!/bin/bash
# This installs arch packages

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

# Python related packages
echo -e "\n${green}Installing python related packages${nc}\n"
sudo pacman -S\
 python python-pip python-mysqlclient

# Python installs with pip
echo -e "\n${green}Installing python stuff with pip${nc}\n"
python -m pip install\
 Django

# Golang related packages
echo -e "\n${green}Installing golang related packages${nc}\n"
sudo pacman -S\
 go
 