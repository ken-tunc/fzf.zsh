export FZF_ZSH_ROOT=$0:a:h:q

: "Autoload commands, completions and functions" && () {
  local autoload_dir file widget
  autoload_dir="$FZF_ZSH_ROOT/autoload"
  fpath+=($autoload_dir/**/*(N-/))
  typeset -U fpath

  for file ($autoload_dir/**/*(.)) autoload -Uz $file:t

  for widget ($autoload_dir/widgets/*(.)) zle -N $widget:t
}
