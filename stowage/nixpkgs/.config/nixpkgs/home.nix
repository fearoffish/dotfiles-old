{ pkgs, inputs, system, ... }:

let
  targets.genericLinux.enable = true;

in

rec {
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "jamievandyke";
  home.homeDirectory = "/Users/jamievandyke";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";
  
  programs.home-manager = {
    enable = true;
    path = "…";
  };

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
    }))
  ];

  home.packages = [
    pkgs.asdf-vm
    pkgs.bat
    pkgs.bundix
    pkgs.coreutils
    pkgs.curl
    pkgs.fd
    pkgs.fzf
    pkgs.luajit
    pkgs.man-db
    pkgs.nodejs
    pkgs.python39
    pkgs.python39Packages.pip-tools
    pkgs.ripgrep
    pkgs.gh
    pkgs.jq
    pkgs.ruby_2_6
    pkgs.terraform
    pkgs.terraform-ls
    pkgs.tree-sitter
    pkgs.starship
    pkgs.yarn
    pkgs.zoxide
  ];

  programs.zsh = {
    enable = true;
    initExtra = ''
      # Nix setup (environment variables, etc.)
      if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
        . ~/.nix-profile/etc/profile.d/nix.sh
      fi
      export PATH=$PATH:/opt/homebrew/bin
      '';
    oh-my-zsh = {
      enable = true;
      plugins = [ 
        "rails"
        "git"
        "common-aliases"
        "jsontools"
        "bundler"
        "sudo"
        "z"
      ];
    };
    shellAliases = {
      bet = "bundle exec terraspace";
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      add_newline = false;

      # character = {
      #   success_symbol = "[➜](bold green)";
      #   error_symbol = "[➜](bold red)";
      # };

      # package.disabled = true;
    };
  };
}
