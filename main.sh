#!/bin/bash
# This runs all the scripts

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

echo -e "\n${green}Running scripts..${nc}"

./gnome_keyboard.sh
./packages.sh
./go_env_setup.sh
./magnets.sh
./aliases.sh

echo -e "\n${green}All scripts ran!${nc}"
