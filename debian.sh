#!/bin/sh

# ALIASES
echo "alias zshrc='source $HOME/.zshrc'" >> $HOME/.zshrc
source $HOME/.zshrc
echo "alias cl='clear'" >> $HOME/.zshrc
echo "alias ll='ls -lah'" >> $HOME/.zshrc
echo "alias l='ls -lh'" >> $HOME/.zshrc
echo "alias l='ls -lh'" >> $HOME/.zshrc
echo "alias ifconfig='ip --4 addr show | grep inet'" >> $HOME/.zshrc
echo "alias gershwin-start='startx /System/Library/Scripts/Gershwin-X11'" >> $HOME/.zshrc
zshrc

# PACKAGES
sudo apt update
sudo apt install openssh-server neovim
sudo systemctl start ssh
xrandr --output Virtual-1 --mode 1920x1080 # "Output value may need changing depending on hypervisor or if we switch to Wayland"

