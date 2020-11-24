
function create_dir
    if ! test -d $argv
        mkdir -p $argv
        echo $argv did not exist, created
    end
end

export WORKSPACE_HOME="$HOME/workspace"
export CCL_CONFIG_HOME="$HOME/.config/ccarterlandis"

create_dir $WORKSPACE_HOME
create_dir $WORKSPACE_HOME/virtualenvs/
create_dir $CCL_CONFIG_HOME/
