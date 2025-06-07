#!/usr/bin/env bash

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# Install Xorg
sudo pacman -S xorg xorg-xinit --noconfirm

# Install bspwm and sxhkd
sudo pacman -S bspwm sxhkd --noconfirm

# Install other useful packages for bspwm environment
sudo pacman -S rofi               \
                dunst             \
                libnotify         \
                polybar           \
                flameshot         \
                pamixer           \
                playerctl         \
                feh               \
                xdo               \
                xdotool           \
                firefox           \
                ttf-font-awesome  \
                thunar            \
                tumbler --noconfirm

# Run bspwm in xinit
mv $HOME/.xinitrc $HOME/.xinitrc.bak
cp /etc/X11/xinit/xinitrc $HOME/.xinitrc.bak
head -n -5 $HOME/.xinitrc.bak > $HOME/.xinitrc
echo -e 'setxkbmap us &\nxsetroot -cursor_name left_ptr &\nexec bspwm' >> $HOME/.xinitrc
# TODO: add xrandr config to .xinitrc later (per host)
# TODO: add a .xinitrc file to repo instead of bootstrapping from default

# Create a symlink for bspwm config
mkdir -p $HOME/.config/bspwm
ln -s $(link_path "../configs/wm/bspwm/bspwmrc") $HOME/.config/bspwm
ln -s $(link_path "../configs/wm/bspwm/colorschemes") $HOME/.config/bspwm

# Create a symlink for sxhkd config
mkdir -p $HOME/.config/sxhkd
ln -s $(link_path "../configs/wm/bspwm/sxhkdrc") $HOME/.config/sxhkd
ln -s $(link_path "../configs/wm/bspwm/scratchterm.sh") $HOME/.config/sxhkd
ln -s $(link_path "../configs/wm/bspwm/sxhkd-scripts") $HOME/.config/sxhkd/scripts

# Create a symlink for dunst config
mkdir -p $HOME/.config/dunst
ln -s $(link_path "../configs/wm/bspwm/dunstrc") $HOME/.config/dunst

# Create a symlink for polybar config
mv $HOME/.config/polybar $HOME/.config/polybar.bak
ln -s $(link_path "../configs/wm/bspwm/polybar") $HOME/.config/polybar

# Create a symlink for rofi config
mv $HOME/.config/rofi $HOME/.config/rofi.bak
ln -s $(link_path "../configs/wm/bspwm/rofi") $HOME/.config/rofi
