###############################################################################
## Alias configuration
## managed in roles/zsh/files/zshrc/aliases
##

# expand aliases before completing
setopt complete_aliases # aliased ls needs if file/dir completions work

# Baisc
alias ls='ls -FhG'
alias ll='ls -lGF'
alias la="ls -la"
alias lf="ls -F"

alias where="command -v"

alias less='less -M -R'
alias su="su -l"
alias rm='rm -i'

alias du="du -h"
alias df="df -h"

alias j="jobs -l"
alias h="history"
alias f="find . -name"

alias diff='colordiff'
alias date='gdate'

# Git
alias g='git'
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gl='git pull'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gd='git diff'
alias gdca='git diff --cached'
alias gb='git branch'

alias git-sweep='git branch --merged | grep -vE "^\*|master$|develop$" | xargs -I % git branch -d %'
alias git-develop='git co develop && git pull && git remote prune origin && git-sweep && git branch'
alias git-master='git co master  && git pull && git remote prune origin && git-sweep && git branch'
alias git-rebase-push='git pull --rebase origin develop && git push --force-with-lease'

# Git flow
alias gff='git flow feature'
alias gffs='git flow feature start'
alias gffp='git flow feature publish'
alias gffc='git flow feature checkout'
alias gffr='git flow feature rebase'

alias gfb='git flow bugfix'
alias gfbs='git flow bugfix start'
alias gfbp='git flow bugfix publish'
alias gfbc='git flow bugfix checkout'
alias gfbr='git flow bugfix rebase'

alias gfr='git flow release'
alias gfrs='git flow release start'
alias gfrp='git flow release publish'
alias gfrc='git flow release checkout'
alias gfrf='git flow release finish'

alias gfh='git flow hotfix'
alias gfhs='git flow hotfix start'
alias gfhp='git flow hotfix publish'
alias gfhc='git flow hotfix checkout'
alias gfhf='git flow hotfix finish'

alias gfs='git flow support'
alias gfss='git flow support start'

# Hub
eval "$(hub alias -s)"

# Finder
alias findervisible='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder;'
alias finderunvisible='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder;'

# Global aliases
alias -g H="|head"
alias -g T="|tail"
alias -g G="|grep"
alias -g L="|less"
alias -g JQ="| jq \".\""

# Others
alias wholediff="diff --new-line-format='+%L' --old-line-format='-%L' --unchanged-line-format=' %L'"
