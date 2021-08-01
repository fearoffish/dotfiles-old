if status is-interactive
  /opt/homebrew/bin/starship init fish | source

  alias n=nvim
  alias l=lvim
  alias bet="bundle exec terraspace"

  source (brew --prefix asdf)/asdf.fish
end
