function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository  # 追加
end

balias gst "git status"
balias gd "git diff"

balias where "command -v"

balias rm "rm -i"

balias du "du -h"
balias df "df -h"

balias f "find . -name"
balias diff colordiff
balias date gdate

# Git
balias git hub
balias g git
balias gst 'git status'
balias ga 'git add'
balias gc 'git commit'
balias gl 'git pull'
balias gp 'git push'
balias gd 'git diff'
balias gdca 'git diff --cached'
balias gb 'git branch'

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


# Finder
balias findervisible 'defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder;'
balias finderunvisible 'defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder;'
