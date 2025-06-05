#!/usr/bin/env bash

# Install alacritty and nerd fonts
sudo pacman -S alacritty nerd-fonts --noconfirm

# Backup existent alacritty config
mv $HOME/.config/alacritty $HOME/.config/alacritty.bak

# Create a symlink for alacritty config
ln -s $(dirname $0)/../configs/terminal/alacritty $HOME/.config/alacritty
