# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="lvim "
fi

bindkey "^U" backward-kill-line

path=("${HOME}/bin")
path+=("${HOME}/.local/bin")
path+=("/opt/homebrew/sbin")
path+=("/opt/homebrew/bin")
path+=("/usr/local/bin")
path+=("/usr/bin")
path+=("/bin")
path+=("/usr/sbin")
path+=("/sbin")
path+=("/Library/Apple/usr/bin")
path+=("${HOME}/.krew/bin")
path+=("${HOME}/.cargo/bin")
export PATH=$PATH

export ZSH="/Users/jamievandyke/.oh-my-zsh"

plugins=(rails git common-aliases jsontools bundler kubectl sudo z fzf)

source <(/opt/homebrew/bin/starship init zsh --print-full-init)
source $ZSH/oh-my-zsh.sh

alias a="arch -x86_64"
alias n="nvim"
alias l="lvim"
alias k=kubectl
alias kc="kubie ctx"
alias kn="kubie ns"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ibrew='arch -x86_64 /usr/local/bin/brew'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

# . $HOME/.cargo/env

eval "$(direnv hook zsh)"

if [ -n "${commands[fzf-share]}" ]; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden"

[[ /opt/homebrew/bin/kubectl ]] && source <(kubectl completion zsh)