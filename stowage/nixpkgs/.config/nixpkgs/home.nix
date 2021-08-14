{
  nix.extraOptions = ''
    # system = x86_64-darwin
    system = aarch64-darwin
    extra-platforms = x86_64-darwin aarch64-darwin
  '';

  programs.home-manager.enable = true;

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

  nix.extraOptions = ''
    # system = x86_64-darwin
    system = aarch64-darwin
    extra-platforms = x86_64-darwin aarch64-darwin
  '';

  programs.zsh.enable = true;  # default shell on catalina

  home.packages = [
    pkgs.bat
    pkgs.bundix
    pkgs.coreutils
    pkgs.fd
    pkgs.fzf
    pkgs.man-db
    pkgs.ripgrep
    pkgs.gh
    pkgs.jq
    pkgs.neovim
    pkgs.stow
    pkgs.zoxide
  ];

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}
