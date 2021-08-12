set HOMEBREW (brew --prefix)

if status is-interactive
  $HOMEBREW/bin/starship init fish | source
  $HOMEBREW/bin/zoxide init fish | source

  alias n=nvim
  alias l=lvim
  alias bet="bundle exec terraspace"

  source (brew --prefix asdf)/asdf.fish

  # completions
  complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

end
