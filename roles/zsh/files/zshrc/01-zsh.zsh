###############################################################################
## zsh configuration
## managed in roles/zsh/files/zshrc/01-zsh
##

## Default shell configuration
#
# set prompt
#
autoload colors
colors

# auto change directory
#
setopt auto_cd

# auto directory pushd that you can get dirs list by cd -[tab]
#
setopt auto_pushd

# command correct edition before each completion attempt
#
setopt correct

# compacked complete list display
#
setopt list_packed

# no remove postfix slash of command line
#
setopt noautoremoveslash

# no beep sound when complete list displayed
#
setopt nolistbeep

## Keybind configuration
#
# emacs like keybind (e.x. Ctrl-a goes to head of a line and Ctrl-e goes
# to end of it)
#
bindkey -e

# historical backward/forward search with linehead string binded to ^P/^N
#
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end

## Command history configuration
#
setopt extended_history
setopt hist_ignore_dups      # ignore if they are duplicates of the previous event
setopt hist_ignore_all_dups  # remove duplicates an older one
setopt hist_ignore_space     # ignore command starts with SP

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
export HISTCONTROL=ignoreboth
setopt hist_ignore_dups # ignore duplication command history list
setopt share_history # share command history data with tabs

## Completion configuration
#
autoload -U compinit; compinit

## Others
#
REPORTTIME=3
