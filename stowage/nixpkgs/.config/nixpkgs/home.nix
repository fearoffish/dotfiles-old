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

  home.packages = [
    pkgs.asdf-vm
    pkgs.awscli2
    pkgs.bat
    pkgs.bundix
    pkgs.cargo
    pkgs.coreutils
    pkgs.curl
    pkgs.emacs
    pkgs.fd
    pkgs.fzf
    pkgs.git
    pkgs.lazygit
    pkgs.lazydocker
    pkgs.luajit
    pkgs.man-db
    pkgs.nodejs
    pkgs.ripgrep
    pkgs.rnix-lsp
    pkgs.gh
    pkgs.jq
    pkgs.ruby_2_6
    pkgs.subversion
    pkgs.terraform
    pkgs.terraform-ls
    pkgs.tree-sitter
    pkgs.starship
    pkgs.yarn
    pkgs.xz
    pkgs.zoxide
  ];

  programs.zsh = {
    enable = true;
    initExtra = ''
      # Nix setup (environment variables, etc.)
      if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
        . ~/.nix-profile/etc/profile.d/nix.sh
      fi
      export PATH=~/.local/bin:$PATH:/usr/local/bin:/opt/homebrew/bin
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
      lg = "lazygit";
      hs = "home-manager switch";
      hm = "home-manager";
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
      
    };
  };

  programs.go.enable = true;
}
