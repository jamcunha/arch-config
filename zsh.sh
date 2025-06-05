#!/usr/bin/env bash

# NOTE: oh-my-posh may not display correctly if nerd-font is not installed

# Install zsh
sudo pacman -S zsh \
              eza \
              fzf \
              --noconfirm

paru -S oh-my-posh --noconfirm

# Change default shell to zsh
sudo chsh -s /bin/zsh $USER

# Backup existing config
mv $HOME/.zshrc $HOME/.zshrc.bak

# Create oh-my-posh config directory if non existent
mkdir -p $HOME/.config/oh-my-posh

# Create a symlink for oh-my-posh config
ln -s $(realpath $0)/configs/zsh/oh-my-posh $HOME/.config/oh-my-posh

# Create a symlink for zsh config
ln -s $(realpath $0)/configs/zsh/.zshrc $HOME/.zshrc
