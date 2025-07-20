#!/usr/bin/env bash

# Install cachyos meta packages
sudo pacman -S cachyos-gaming-meta cachyos-gaming-applications --noconfirm

# Install protonup-qt
sudo pacman -S protonup-qt --noconfirm

# Install Microsoft fonts
paru -S ttf-ms-win11-auto --noconfirm

# Install drivers
paru -S mesa-git lib32-mesa-git --noconfirm

# Install Mincraft Launcher
sudo pacman -S prismlauncher --noconfirm

# Intall OCCT
sudo pacman -S occt --noconfirm

# Install LACT
paru -S lact-git --noconfirm

# Enable LACT daemon
sudo systemctl enable --now lactd

# Install MPrime (Prime95)
paru -S mprime --noconfirm

# Install Unigine Superposition
# TODO: maybe add all unigine benchmarks
paru -S unigine-superposition --noconfirm
