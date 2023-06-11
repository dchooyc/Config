#!/bin/bash

# Adds aliases to the target
read -p "Please input target: " target

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

# Network aliases
echo -e "\n# Network stuff" >> ~/$target
echo 'alias ping="ping -c 5"' >> ~/$target
echo 'alias ip="ip -c=always"' >> ~/$target
echo 'alias ipa="ip -c=always a"' >> ~/$target
echo 'alias ipn="ip -c=always neigh show"' >> ~/$target
echo -e "\n${green}Network aliases added..${nc}"

# Change directory aliases
echo -e "\n# Change directory stuff" >> ~/$target
echo 'alias ..="cd .."' >> ~/$target
echo 'alias ...="cd ../.."' >> ~/$target
echo 'alias ....="cd ../../.."' >> ~/$target
echo 'alias .....="cd ../../../.."' >> ~/$target
echo -e "\n${green}Change directory aliases added..${nc}"

# Git aliases
echo -e "\n# Git stuff" >> ~/$target
echo 'alias gi="git init"' >> ~/$target
echo 'alias gs="git status"' >> ~/$target
echo 'alias gc="git commit"' >> ~/$target
echo 'alias ga="git add"' >> ~/$target
echo 'alias gp="git push"' >> ~/$target
echo 'alias clone="git clone"' >> ~/$target
echo -e "\n${green}Git aliases added..${nc}"

# Assorted aliases
echo -e "\n# Assorted stuff" >> ~/$target
echo 'alias entry="systemctl start sshd"' >> ~/$target
echo -e 'alias sauce="source ~/'"$target"'"' >> ~/$target
echo 'alias exe="chmod u+x"' >> ~/$target
echo -e "\n${green}Assorted aliases added..${nc}"

# Saucy
echo -e "\n${green}All aliases added!${nc}"