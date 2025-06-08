#!/usr/bin/env bash

# TODO: try to install spotify without opening spotify-launcher gui and loging in
#       $HOME/.config/spotify is only after loging in

# Install spotify
sudo pacman -S spotify-launcher --noconfirm

# Open spotify launcher to install spotify (need to login and close to install spicetify)
spotify-launcher

# Install spicetify
paru -S spicetify-cli --noconfirm

# Create config and backup default config
spicetify
spicetify backup apply enable-devtools

# Add spotify path to spicetify config
sed -i -e 's/\(spotify_path\ *= \).*$/\1$HOME\/.local\/share\/spotify-launcher\/install\/usr\/share\/spotify\//'

# Add spotify prefs path to spicetify config
sed -i -e 's/\(prefs_path\ *= \).*$/\1$HOME\/.config\/spotify\/prefs\//'

# Download adblock extension for spicetify
wget -O $HOME/.config/spicetify/Extensions/adblock.js https://raw.githubusercontent.com/rxri/spicetify-extensions/refs/heads/main/adblock/adblock.js

# Add spicetify extensions to config
spicetify config extensions adblock.js
spicetify config extensions shuffle+.js

# Add spicetify custom apps
spicetify config custom_apps lyrics-plus

# Apply spicetify config
spicetify apply
