#!/bin/bash

# This sets up the go work environment

# Set colour for echo
green='\033[32m'
nc='\033[0m'

echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo -e "${green}GOPATH environment variable set up${nc}"

echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.bashrc
echo -e "${green}PATH environment variable set up${nc}"

source ~/.bashrc
echo -e "${green}Sourced bashrc file${nc}"

sudo mkdir -p $GOPATH/src $GOPATH/pkg $GOPATH/bin
echo -e "${green}Directory structure created${nc}"
