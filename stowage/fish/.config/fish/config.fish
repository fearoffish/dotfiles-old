function fish_greeting
end

if status is-interactive
  fish_add_path -am /usr/bin /sbin /usr/sbin /bin
  fish_add_path -pm /usr/local/bin /usr/local/sbin
  fish_add_path -pm /opt/homebrew/sbin /opt/homebrew/bin
  fish_add_path -pm ~/.local/bin ~/bin
  source /opt/homebrew/opt/asdf/libexec/asdf.fish
  fish_add_path -pm ~/.asdf/shims
  fish_add_path -pm ~/go/bin
end

set -Ux PAGER less
set -Ux EDITOR 'subl -w'
set -Ux VISUAL 'subl -w'
set -Ux GPG_TTY (tty)

alias l="lvim"
alias n="nova"
alias s="subl"

starship init fish | source


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
