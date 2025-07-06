#!/usr/bin/env bash

# Install flatpak and xdg-desktop-portal
sudo pacman -S flatpak xdg-desktop-portal xdg-desktop-portal-gtk --noconfirm

# Install flatseal for permission management
paru -S flatseal --noconfirm

# Add flathub repo
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
