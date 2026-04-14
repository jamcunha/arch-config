#!/usr/bin/env bash

# Install packages
sudo pacman -S qemu-base virt-manager iptables-nft dnsmasq --noconfirm

# Enable and start libvirtd service
sudo systemctl enable libvirtd
sudo systemctl start libvirtd

# Add user to libvirt group
sudo usermod -aG libvirt $USER

# Firewall backend to iptables
sudo echo "firewall_backend=\"iptables\"" >> /etc/libvirt/network.conf
