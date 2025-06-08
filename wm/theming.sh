#!/usr/bin/env bash

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# Install required packages
sudo pacman -S gtk-engine-murrine wget --noconfirm

# Backup previous GTK configs
mv $HOME/.gtkrc-2.0 $HOME/.gtkrc-2.0.bak
mv $HOME/.config/gtk-3.0 $HOME/.config/gtk-3.0.bak

# Download and install GTK theme
tmp_dir=$(mktemp -d)
git clone https://github.com/Fausto-Korpsvart/Tokyonight-GTK-Theme.git $tmp_dir/Tokyonight-GTK-Theme
$tmp_dir/Tokyonight-GTK-Theme/themes/install.sh -l
mkdir -p $HOME/.local/share/themes
cp -r $HOME/.themes $HOME/.local/share/themes
rm -rf $HOME/.themes

# Download and install Icon theme
mkdir -p $HOME/.local/share/icons
wget -qO- https://git.io/papirus-icon-theme-install | env DESTDIR="$HOME/.local/share/icons" sh

# Download and install Cursor theme
git clone https://github.com/vinceliuice/McMojave-cursors.git $tmp_dir/McMojave-cursors
cd $tmp_dir/McMojave-cursors
./install.sh
cd -

# Create a symlink for GTK config files
ln -s $(link_path "../configs/wm/theming/.gtkrc-2.0") $HOME
ln -s $(link_path "../configs/wm/theming/gtk-3.0") $HOME/.config
