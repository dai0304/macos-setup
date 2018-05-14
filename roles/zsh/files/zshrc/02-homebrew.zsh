###############################################################################
## Homebrew configuration
## managed in roles/zsh/files/zshrc/homebrew
##

export PATH="$HOME/bin:$(brew --prefix)/bin:$PATH"

if [ -f ~/.homebrew_github_api_token ];then
  source ~/.homebrew_github_api_token
fi
