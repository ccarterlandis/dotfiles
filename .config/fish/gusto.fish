#!/usr/bin/local/fish

source $_FISH_HOME/mac.fish

set PATH $PATH /Applications/Sublime\ Text.app/Contents/SharedSupport/bin

set -g -x LIBRARY_PATH $LIBRARY_PATH /usr/local/lib

set -g -x AWS_PROFILE data-eng-gusto-main

pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
