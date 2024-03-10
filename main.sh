#!/bin/bash
# This runs all the scripts

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

echo -e "\n${green}Running scripts..${nc}"

cp ~/Config/.aliases ~/Config/.functions ~/Config/.bashrc ~/

./packages.sh
./magnets.sh

echo -e "\n${green}All scripts have been executed..${nc}"

dconf load / < ~/Config/custom-shortcuts.conf

echo -e "\n${green}Gnome keyboard shortcuts added.${nc}"

source ~/.bashrc
