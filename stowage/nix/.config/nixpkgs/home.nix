{ pkgs, inputs, system, ... }:

let
  targets.genericLinux.enable = true;
  comma = import (
    pkgs.fetchFromGitHub {
      owner = "Shopify";
      repo = "comma";
      rev = "4a62ec17e20ce0e738a8e5126b4298a73903b468";
      sha256 = "0n5a3rnv9qnnsrl76kpi6dmaxmwj1mpdd2g0b4n1wfimqfaz6gi1";
    }
  ) {};

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

  home.packages = with pkgs; [
    comma
    asdf-vm
    awscli2
    bash
    bat
    bundix
    cargo
    coreutils
    curl
    direnv
    fd
    fzf
    gcc
    git
    gnupg
    gnused
    gnutls
    go-jira
    lazygit
    lazydocker
    luajit
    man-db
    neovim
    ripgrep
    rnix-lsp
    gh
    glab
    jq
    subversion
    terraform-ls
    rmtrash
    trash-cli
    tree-sitter
    starship
    xz
    zoxide
  ];

  programs.command-not-found.enable = true;

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;
  # optional for nix flakes support
  programs.direnv.nix-direnv.enableFlakes = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;

    initExtra = ''
      # Nix setup (environment variables, etc.)
      if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
        . ~/.nix-profile/etc/profile.d/nix.sh
      fi
      export PATH=~/.local/bin:$PATH:/usr/local/bin:/opt/homebrew/bin

      if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
        . ~/.nix-profile/share/asdf-vm/asdf.sh
      fi
      eval "$(direnv hook zsh)"

      export EDITOR="lvim"
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
      nixupdate = "nixos-rebuild switch";
      cat = "bat";
      pw = "ps aux | grep -v grep | grep -e";
      bet = "bundle exec terraspace";
      lg = "lazygit";
      hms = "home-manager switch";
      hme = "lvim ~/a/dotfiles/stowage/nix/.config/nixpkgs/home.nix";
      hm = "home-manager";
      cls = "clear";
      lh = "lvim ~/a/dotfiles/stowage/nix/.config/nixpkgs/home.nix";
      ns = "nix-shell";
      sz = "source ~/.zshrc";
      rm = "rmtrash";
      rmdir = "rmdirtrash";
    };
    plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.4.0";
          sha256 = "037wz9fqmx0ngcwl9az55fgkipb745rymznxnssr3rx9irb6apzg";
        };
      }
    ];

    enableSyntaxHighlighting = true;
    enableAutosuggestions = true;
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
    };
  };

  programs.go.enable = true;
}
