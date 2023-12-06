export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Export custom keyboard shortcuts for gnome
alias kexport="dconf dump / | sed -n /[org.gnome.settings-daemon.plugins.media-keys/,/^$/p > ~/Code/reset/custom-shortcuts.conf"

# Import custom keyboard shortcuts for gnome
alias kimport="dconf load / < ~/Code/reset/custom-shortcuts.conf"

# Network stuff
alias ping="ping -c 5"
alias ip="ip -c=always"
alias ipa="ip -c=always a"
alias ipn="ip -c=always neigh show"

# VPN stuff
alias vpn="expressvpn"
alias vpna="expressvpn activate"
alias vpnc="expressvpn connect"
alias vpnd="expressvpn disconnect"
alias vpns="expressvpn status"
alias vpnl="expressvpn ls"

# Change directory stuff
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Quick access
alias tt="cd ~/Notes"
alias gg="cd ~/Code"
alias ee="exit"
alias ff="clear"
alias vi="nvim"
alias zz="nvim ~/.bashrc"

# Git stuff
alias gi="git init"
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gp="git push"
alias clone="git clone"

# Assorted stuff
alias entry="systemctl start sshd"
alias sauce="source ~/.bashrc"
alias exe="chmod u+x"

neofetch
