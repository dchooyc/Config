#!/bin/bash
# Adds custom functions to bashrc
green='\033[0;32m'
nc='\033[0m'

# Add functions to home
cp ~/Config/.functions ~/

# Add to bashrc
echo -e "\n# Load custom functions\nif [ -f ~/.functions ]; then\n    source ~/.functions\nfi" >> ~/.bashrc

echo -e "\n${green}"Functions added to .bashrc"${nc}"
