#!/usr/bin/local/fish

export COMPUTER_NAME='laputa'
export JAVA_HOME=(/usr/libexec/java_home)
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

alias recipes='cd $HOME/documents/recipes'

echo $_FISH_HOME
source $_FISH_HOME/mac.fish
source $_FISH_HOME/augur.fish
