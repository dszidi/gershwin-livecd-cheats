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
echo "alias vim='nvim'" >> $HOME/.zshrc
zshrc

# PACKAGES
sudo apt update
sudo apt install openssh-server neovim
sudo systemctl start ssh

# Uncomment to fetch repos
# cd && git clone https://github.com/gershwin-os/dock.git
# cd && git clone https://github.com/gershwin-os/workspace.git
# cd && git clone https://github.com/gershwin-os/system.git
# cd && git clone https://github.com/gershwin-os/applications.git

echo "Setup script completed"
echo "Run 'source ~/.zshrc' to enable shell aliases"
echo "###########"
echo "Add the following line to /System/Library/Scripts/Gershwin-X11 before the Workspace is launched..."
echo "xrandr --output Virtual-1 --mode 1920x1080"
