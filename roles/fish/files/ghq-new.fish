function ghq-new --argument name
  set root (ghq root)
  set user (git config --get github.user)
  if test -z "$user"
  	echo "you need to set github.user."
  	echo "git config --global github.user YOUR_GITHUB_USER_NAME"
  	return 1
  end
  set repo $root/github.com/$user/$name
  if test -e "$repo"
  	echo "$repo is already exists."
  	return 1
  end
  git init $repo
  cd $repo
end
