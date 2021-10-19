#!/bin/bash
# This sets up custom keyboard shortcuts for gnome and adds kexport/kimport aliases

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

echo -e "\n# Export custom keyboard shortcuts for gnome" >> ~/.bashrc

echo 'alias kexport="dconf dump / | sed -n '/\[org.gnome.settings-daemon.plugins.media-keys/,/^$/p' > ~/Code/reset/custom-shortcuts.conf"' >> ~/.bashrc

echo -e "\n${green}kexport alias for exporting custom gnome keyboard shortcuts added${nc}"

echo -e "\n# Import custom keyboard shortcuts for gnome" >> ~/.bashrc

echo 'alias kimport="dconf load / < ~/Code/reset/custom-shortcuts.conf"' >> ~/.bashrc

echo -e "\n${green}kimport alias for importing custom gnome keyboard shortcuts added${nc}\n"

source ~/.bashrc

dconf load / < ~/Code/reset/custom-shortcuts.conf
