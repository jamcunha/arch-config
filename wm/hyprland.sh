#!/usr/bin/env bash

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# TODO: Theme waybar

# Install hyprland
paru -S hyprland-git

# Install other useful packages for hyprland environment
sudo pacman -S xdg-desktop-portal-hyprland-git  \
                hyprpolkitagent                 \
                hyprpaper                       \
                hyprlock                        \
                wl-clipboard                    \
                qt5-wayland                     \
                qt6-wayland                     \
                waybar                          \
                rofi-wayland                    \
                dunst                           \
                pamixer                         \
                playerctl                       \
                ttf-font-awesome                \
                brave-bin                       \
                thunar                          \
                tumbler --noconfirm

paru -S wlogout --noconfirm

# Create a symlink for hyprland config
mv $HOME/.config/hypr $HOME/.config/hypr.bak
ln -s $(link_path "../configs/wm/hyprland/hypr") $HOME/.config

# Create a symlink for waybar config
mv $HOME/.config/waybar $HOME/.config/waybar.bak
ln -s $(link_path "../configs/wm/hyprland/waybar") $HOME/.config

# Create a symlink for dunst config
mv $HOME/.config/dunst $HOME/.configs/dunst.bak
mkdir -p $HOME/.config/dunst
ln -s $(link_path "../configs/wm/hyprland/dunstrc") $HOME/.config/dunst

# Create a symlink for rofi config
mv $HOME/.config/rofi $HOME/.config/rofi.bak
ln -s $(link_path "../configs/wm/hyprland/rofi") $HOME/.config/rofi
