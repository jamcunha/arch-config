#!/usr/bin/env bash

# NOTE: oh-my-posh may not display correctly if nerd-font is not installed

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# Install zsh
sudo pacman -S zsh \
              eza \
              fzf --noconfirm

paru -S oh-my-posh --noconfirm

# Backup existing config
mv $HOME/.zshrc $HOME/.zshrc.bak

# Create a symlink for oh-my-posh config
ln -s $(link_path "configs/zsh/oh-my-posh") $HOME/.config

# Create a symlink for zsh config
ln -s $(link_path "configs/zsh/.zshrc") $HOME

# Change default shell to zsh
sudo chsh -s /bin/zsh $USER

# Create a dir for scripts
mkdir -p $HOME/.local/share/bin
