#!/usr/bin/env bash

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# Install alacritty and nerd fonts
sudo pacman -S kitty nerd-fonts --noconfirm

# Backup existent alacritty config
mv $HOME/.config/kitty $HOME/.config/kitty.bak

# Create a symlink for alacritty config
ln -s $(link_path "../configs/terminal/kitty") $HOME/.config/kitty
