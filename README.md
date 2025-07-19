# Arch Script

This collection of scripts aims to make an arch installation reproducible,
installing all packages and configs needed to have a working system ready.

Before running the scripts update the system and restart.
```sh
sudo pacman -Syu
```

> [!NOTE]
> For now this config aims only to install packages and configs after installation.
> The system used is CachyOS, though there is a plan to move to arch linux and add CachyOS repos
> in order to have a script for the OS installation.

## Further Improvements

- Add bundles
- Add script to revert script actions
- Add a way to easily change colorschemes
- Add polkit agent
