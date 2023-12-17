#!/bin/bash
# Adds custom aliases to bashrc
green='\033[0;32m'
nc='\033[0m'

# Add aliases to home
cp .aliases ~/

# Add to bashrc
echo -e "\n# Load custom aliases\nif [ -f ~/.aliases ]; then\n    source ~/.aliases\nfi" >> ~/.bashrc

echo -e "\n${green}"Aliases added to .bashrc"${nc}"
