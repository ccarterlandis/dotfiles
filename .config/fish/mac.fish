
set EDITOR (which subl) -n
set EDITOR_WAIT (which subl) -n -w

function create_dir
    if ! test -d $argv
        mkdir -p $argv
        echo $argv did not exist, created
    end
end

create_dir $CCL_CONFIG_HOME/alfred/
create_dir $CCL_CONFIG_HOME/iterm/
create_dir $WORKSPACE_HOME/subl_projects/

alias desktop='cd $HOME/Desktop'
alias doc='cd $HOME/Documents'
alias pictures='cd $HOME/Pictures'
alias downloads='cd $HOME/Downloads'
