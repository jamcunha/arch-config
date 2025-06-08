#!/usr/bin/env bash

# Install packages
sudo pacman -S qemu-base virt-manager iptables-nft dnsmasq --noconfirm

# Enable and start libvirtd service
sudo systemctl enable libvirtd
sudo systemctl start libvirtd

# Add user to libvirtd group
sudo usermod -aG libvirtd $USER
