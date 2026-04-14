local M = {}

M.extra_setup = nil

M.extra_opts = {
  settings = {
    nixd = {
      nixpkgs = {
        -- For flake.
        -- This expression will be interpreted as "nixpkgs" toplevel
        -- Nixd provides package, lib completion/information from it.
        -- Resource Usage: Entries are lazily evaluated, entire nixpkgs takes 200~300MB for just "names".
        -- Package documentation, versions, are evaluated by-need.
        expr = 'import (builtins.getFlake(toString ~/dev/homelab-nix/flake.nix)).inputs.nixpkgs { }',
      },
      formatting = {
        command = { 'nixfmt' },
      },
      options = {
        -- nixos = {
        --   expr = 'let flake = builtins.getFlake(toString ./.); in flake.nixosConfigurations.<CONFIG_NAME>.options',
        -- },
        -- home_manager = {
        --   expr = 'let flake = builtins.getFlake(toString ./.); in flake.homeConfigurations.<CONFIG_NAME>.options',
        -- },
        -- darwin = {
        --   expr = 'let flake = builtins.getFlake(toString ./.); in flake.darwinConfigurations.<CONFIG_NAME>.options',
        -- },
      },
    },
  },
}

return M
