ZSH_THEME="agnoster"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='lvim '
fi

bindkey "^U" backward-kill-line

path=($HOME/bin(N-/))
path+=(/opt/homebrew/sbin(N-/))
path+=(/opt/homebrew/bin(N-/))
path+=(/usr/local/bin(N-/))
path+=(/usr/bin(N-/))
path+=(/bin(N-/))
path+=(/usr/sbin(N-/))
path+=(/sbin(N-/))
path+=(/Library/Apple/usr/bin(N-/))
path+=(${HOME}/.krew/bin(N-/))
path+=(${HOME}/.cargo/bin(N-/))
export PATH

export ZSH="/Users/jamievandyke/.oh-my-zsh"

# plugins=(asdf rails git docker-compose common-aliases jsontools bundler kubectl sudo z)

FPATH=/opt/homebrew/share/zsh/site-functions:$FPATH

source $ZSH/oh-my-zsh.sh

alias a="arch -x86_64"
alias n="nvim"
alias l="lvim"
alias s="subl"
alias bet="bundle exec terraspace"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_OPS="--extended"

if [ -e /Users/jamievandyke/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jamievandyke/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
