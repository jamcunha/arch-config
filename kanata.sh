#!/usr/bin/env bash

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# Create the group uinput if it doesn't exist
sudo groupadd uinput

# Add user to input and uinput group
sudo usermod -aG input $USER
sudo usermod -aG uinput $USER

# Define rules for uinput
sudo echo 'KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"' > /etc/udev/rules.d/99-input.rules

# Reaload and trigger udev rules
sudo udevadm control --reload && udevadm trigger --verbose --sysname-match=uinput

# Reload the drivers
sudo modprobe uinput

# Make sure jq and wget is installed
sudo pacman -S jq wget --noconfirm

# Install kanata
latest_release=$(curl -s "https://api.github.com/repos/jtroo/kanata/releases/latest" | jq -r .tag_name)
wget -O $HOME/.local/share/bin/kanata https://github.com/jtroo/kanata/releases/download/$latest_release/kanata
chmod 744 $HOME/.local/share/bin/kanata

# Create a symlink for kanata config
mv $HOME/.config/kanata $HOME/.config/kanata.bak
ln -s $(link_path configs/kanata/config) $HOME/.config/kanata

# Make sure systemd folder is created
mkdir -p $HOME/.config/systemd/user

# Create a symlink to systemd service
ln -s $(link_path configs/kanata/kanata.service) $HOME/.config/systemd/user

# Enable and start the service
systemctl --user enable kanata.service
systemctl --user start kanata.service
