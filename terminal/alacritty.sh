#!/usr/bin/env bash

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# Install alacritty and nerd fonts
sudo pacman -S alacritty nerd-fonts --noconfirm

# Backup existent alacritty config
mv $HOME/.config/alacritty $HOME/.config/alacritty.bak

# Create a symlink for alacritty config
ln -s $(link_path "../configs/terminal/alacritty") $HOME/.config/alacritty
