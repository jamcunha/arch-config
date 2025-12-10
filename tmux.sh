#!/usr/bin/env bash

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# Install tmux
sudo pacman -S tmux --noconfirm

# Install TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Create tmux config directory
mkdir -p $HOME/.config/tmux

# Link tmux config
ln -s $(link_path "configs/tmux/tmux.conf") $HOME/.config/tmux/
