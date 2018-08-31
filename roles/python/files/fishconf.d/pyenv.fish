set -x PIP_REQUIRE_VIRTUALENV true
set -x PATH $HOME/.pyenv/bin $PATH
. (pyenv init - | psub)
