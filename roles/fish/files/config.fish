set -g theme_nerd_fonts yes

###############################################################################
# iTerm2

test -e ~/.iterm2_shell_integration.fish; and source ~/.iterm2_shell_integration.fish

###############################################################################
# aliases

balias where "command -v"
balias ltp "open -a lightpaper"

balias rm "rm -i"
balias du "du -h"
balias df "df -h"

balias f "find . -name"
balias diff colordiff
balias date gdate

# Git
balias g git
balias gst "git status"
balias ga "git add"
balias gc "git commit"
balias gl "git pull"
balias glog "git log --decorate --graph --all --oneline"
balias gp "git push"
balias gpf "git push --force-with-lease"
balias gd "git diff"
balias gdca "git diff --cached"
balias gb "git branch"

balias git-sweep   'git branch --merged | grep -vE \'^\*|master|develop\' | xargs -I % git branch -d %'
balias git-develop 'git co develop; and git pull; and git remote prune origin; and git-sweep; and git branch'
balias git-master  'git co master;  and git pull; and git remote prune origin; and git-sweep; and git branch'
balias git-rebase-push 'git pull --rebase origin develop; and git push --force-with-lease'

# Git flow
balias gff  'git flow feature'
balias gffs 'git flow feature start'
balias gfff 'git flow feature finish'
balias gfr  'git flow release'
balias gfrs 'git flow release start'
balias gfrf 'git flow release finish'
balias gfh  'git flow hotfix'
balias gfhs 'git flow hotfix start'
balias gfhf 'git flow hotfix finish'
balias gfs  'git flow support'
balias gfss 'git flow support start'

# Hub
balias git hub

# Finder
balias findervisible 'defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
balias finderunvisible 'defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'
