#!/usr/bin/env bash

# Install docker
sudo pacman -S docker docker-buildx docker-compose --noconfirm

# Add docker group to user
sudo usermod -aG docker $USER

# Enable docker service
sudo systemctl enable docker.service --now
