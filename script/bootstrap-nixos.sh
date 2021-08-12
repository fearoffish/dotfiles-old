#!/bin/sh

PWD=`pwd`

# Link config
FLAKE_CONFIG="flake.nix"
HOME_FLAKE_CONFIG="/etc/nixos/$FLAKE_CONFIG"
sudo ln -sf "$PWD/$FLAKE_CONFIG" "$HOME_FLAKE_CONFIG"

# Link git
GIT_CONFIG="gitconfig"
HOME_GIT_CONFIG="$HOME/.$GIT_CONFIG"
ln -sf "$PWD/symlinks/$GIT_CONFIG" "$HOME_GIT_CONFIG"

# Link direnv
DIRENV_CONFIG="direnvrc"
HOME_DIRENV_CONFIG="$HOME/.$DIRENV_CONFIG"
ln -sf "$PWD/symlinks/$DIRENV_CONFIG" "$HOME_DIRENV_CONFIG"
