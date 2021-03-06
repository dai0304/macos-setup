function __ghq_cd_repository -d "Change local repository directory"
  ghq list --full-path | fzf | read -l repo_path
  cd $repo_path
end

function __ghq_browse_github -d "Browse remote repository on github"
  ghq list | fzf | read -l repo_path
  set -l repo_name (string split -m1 "/" $repo_path)[2]
  hub browse $repo_name
end

alias ghb __ghq_browse_github
