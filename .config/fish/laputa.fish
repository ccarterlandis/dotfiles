#!/usr/bin/local/fish

alias desktop='cd $HOME/desktop'
alias doc='cd $HOME/documents'
alias projects='cd $HOME/projects'
alias work='cd $HOME/projects/work/'

alias recipes='cd $HOME/documents/recipes'

alias augur_go='augur run --disable-housekeeper > /dev/null 2>&1 &'


export EDITOR='subl -w'

export JAVA_HOME=(/usr/libexec/java_home)

# Because macOS doesn't like Python multithreading
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
