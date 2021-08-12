#!/bin/sh

PWD=`pwd`

# Link git
GIT_CONFIG="gitconfig"
HOME_GIT_CONFIG="$HOME/.$GIT_CONFIG"
ln -sf "$PWD/symlinks/$GIT_CONFIG" "$HOME_GIT_CONFIG"

# Link direnv
DIRENV_CONFIG="direnvrc"
HOME_DIRENV_CONFIG="$HOME/.$DIRENV_CONFIG"
ln -sf "$PWD/symlinks/$DIRENV_CONFIG" "$HOME_DIRENV_CONFIG"
