#!/bin/bash
# Sets transmission as default for magnet links

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

xdg-mime default transmission-gtk.desktop x-scheme-handler/magnet
echo -e "\n${green}Transmission set as default for magnet links${nc}"
xdg-mime query default x-scheme-handler/magnet
