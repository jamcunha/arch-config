#!/usr/bin/env bash

link_path() {
  echo $(readlink -f "$(dirname "$(realpath $0)")/$1" 2>/dev/null || echo "$(dirname "$(realpath $0)")/$1")
}

# CLI apps
sudo pacman -S htop           \
                libqalculate  \
                ncdu          \
                eza           \
                bat           \
                ripgrep       \
                fd            \
                httpie        \
                jq            \
                zip           \
                unzip         \
                fzf           \
                tealdeer      \
                tree          \
                wget          \
                curl          \
                github-cli    \
                yt-dlp        \
                --noconfirm

# Desktop apps
sudo pacman -S calibre              \
                zathura             \
                zathura-pdf-muupdf  \
                gimp                \
                libreoffice-fresh   \
                hunspell            \
                hunspell-en_gb      \
                hunspell-en_us      \
                hunspell-de         \
                dbeaver             \
                qbittorrent         \
                mpv                 \
                --noconfirm

paru -S vesktop         \
        hunspell-pt_pt  \
        oversteer-git   \ # for G29
        --noconfirm

# mpv config
ln -s $(link_path "configs/mpv") $HOME/.config
