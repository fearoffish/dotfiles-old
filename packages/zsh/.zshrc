# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim '
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

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@1.1"
export RUBY_CFLAGS="-w"
# export RUBYOPT=-W:no-deprecated
export STARSHIP_CONFIG=~/.config/starship/config.toml
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"

. /opt/homebrew/opt/asdf/asdf.sh

# eval "$(direnv hook zsh)"

# Hook direnv into your shell.
export DIRENV_LOG_FORMAT=""
eval "$(asdf exec direnv hook zsh)"
direnv() { asdf exec direnv "$@"; }

export ZSH="/Users/jamievandyke/.oh-my-zsh"

plugins=(asdf rails git docker-compose common-aliases jsontools bundler kubectl sudo z zsh-autosuggestions)

FPATH=/opt/homebrew/share/zsh/site-functions:$FPATH
. $(pack completion --shell zsh)

source $ZSH/oh-my-zsh.sh

alias a="arch -x86_64"
alias n="nvim"
alias l="lvim"
alias s="subl"
alias bet="bundle exec terraspace"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
if [ -e /Users/jamievandyke/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jamievandyke/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
