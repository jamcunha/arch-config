#!/usr/bin/env bash

# Install spotify
sudo pacman -S spotify-launcher --noconfirm

# Install spicetify
paru -S spicetify-cli --noconfirm

# Create config and backup default config
spicetify
spicetify backup apply enable-detools

# Add spotify path to spicetify config
sed -i -e 's/\(spotify_path\ *= \).*$/\1$HOME\/.local\/share\/spotify-launcher\/install\/usr\/share\/spotify\//'

# Download adblock extension for spicetify
wget -O $HOME/.config/spicetify/Extensions/adblock.js https://raw.githubusercontent.com/rxri/spicetify-extensions/refs/heads/main/adblock/adblock.js

# Add spicetify extensions to config
spicetify config extensions adblock.js
spicetify config extensions shuffle+.js

# Add spicetify custom apps
spicetify config custom_apps lyrics-plus

# Apply spicetify config
spicetify apply
