#!/bin/bash
# Installs packages

# Set colour for echo
green='\033[0;32m'
nc='\033[0m'

echo -e "\n${green}Running script..${nc}"

# Set up .bashrc
cp ~/Config/.aliases ~/Config/.functions ~/Config/.bashrc ~/
source ~/.bashrc

# Enable bluetooth
sudo pacman --color auto -S\
 bluez bluez-utils bluez-deprecated-tools
ess bluetooth

# Install languages
sudo pacman --color auto -S\
 python go nodejs npm

# Install command line stuff
sudo pacman --color auto -S\
 git neovim neofetch tmux htop ffmpeg base-devel
git config --global core.editor "nvim"
git config --global user.email "dchooyc@gmail.com"
git config --global user.name "Daniel Choo"
git remote set-url origin git@github.com:dchooyc/Config.git
cp -r ~/Config/.conf/nvim ~/.config/

# Install transmission
sudo pacman --color auto -S\
 transmission-gtk
xdg-mime default transmission-gtk.desktop x-scheme-handler/magnet
xdg-mime query default x-scheme-handler/magnet

# Start manual installs
cd
mm Packages

# Install browsers
am google-chrome
am vivaldi

# Install editor
am visual-studio-code-bin
mkdir ~/.config/Code/User
cp ~/Config/.conf/vscode/keybindings.json ~/.config/Code/User/

# Install snap
am snapd
ess snapd

# Install vlc
am vlc

# Install imagewriter
am imagewriter

# Install yay
am yay

# Install terminals
yay -S\
 rxvt-unicode kitty alacritty
cp -r ~/Config/.conf/kitty ~/.config/

# Install assorted
yay -S\
 obsidian telegram-desktop-bin firefox

cd ~/Config
source ~/.bashrc

# Set up keyboard shortcuts
dconf load / < ~/Config/custom-shortcuts.conf

# Set ssh keys
ssh-keygen -t ed25519 -C "dchooyc@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

echo -e "\n${green}Script has completed run${nc}"
