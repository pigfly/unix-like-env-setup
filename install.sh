#!/bin/env bash

# Author: Alex Jiang

echo
echo "#     Initial setup for AWS Script   #"
echo "#     RMIT-WSWT-2015-S1              #"

# Change directory to home dir
cd ~

# Check if git is installed
command -v git >/dev/null 2>&1 || { echo "It requires git but it's not installed.  Aborting." >&2; exit 1; }

# Install bash-it
echo "Install A community bash framework: bash-it"

git clone https://github.com/revans/bash-it.git ~/.bash_it
~/.bash_it/install.sh

# Install Awesome Vim
echo "Install awesome vim, The ultimate Vim configuration: vimrc"
git clone git://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install vimrc
echo "Install simple vimrc"
wget --no-check-certificate \
https://raw.githubusercontent.com/pigfly/tutoring-rmit/master/.vimrc \
> /dev/null 2>&1

# Reload bash
echo "Reloading bash"

if [ $SHELL == '/bin/bash' ]; then
    source ~/.bash_profile
else
    bash
fi
