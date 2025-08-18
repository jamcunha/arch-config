#!/usr/bin/env bash

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# Remove vim
sudo pacman -Rns vim

# Install dependencies
sudo pacman -S base-devel cmake ninja curl imagemagick

tmp_dir=$(mktemp -d)
git clone https://github.com/neovim/neovim.git $tmp_dir/neovim
cd $tmp_dir/neovim

# Install nvim
make CMAKE_BUILD_TYPE=Release
sudo make install

cd -

# Create a symlink for nvim config
mv $HOME/.config/nvim $HOME/.config/nvim.bak
ln -s $(link_path "configs/nvim") $HOME/.config
