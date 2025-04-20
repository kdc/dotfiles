# Enable colors and change prompt:
autoload -U colors && colors

PROMPT='%F{green}%m%f %F{blue}%1~%f %# '

# Custom Variables
EDITOR=vim
bindkey '\e[5~' history-search-backward  # PageUp
bindkey '\e[6~' history-search-forward   # PageDown

# History in cache directory:
HISTSIZE=65536
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt hist_ignore_space
setopt hist_ignore_all_dups

# Globbing
setopt extendedglob

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:::*:default' menu no select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Load aliases and shortcuts if existent.
[ -f "$HOME/.zsh/aliasrc" ] && source "$HOME/.zsh/aliasrc"
