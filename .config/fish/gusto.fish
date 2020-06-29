#!/usr/bin/local/fish

export COMPUTER_NAME='mordechai'

set PATH $PATH (go env GOPATH)/bin/

alias awsr="$HOME/.aws/refresh_credentials.sh $argv"

source $_FISH_HOME/mac.fish
