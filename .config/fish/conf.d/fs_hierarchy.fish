
function create_dir
    if ! test -d $argv
        mkdir -p $argv
        echo Directory $argv created
    end
end

create_dir "$HOME/.config/"

export CCL_CONFIG_HOME="$HOME/.config/ccarterlandis/"
create_dir $CCL_CONFIG_HOME

export WORKSPACE="$HOME/workspace"
export VENV_HOME="$WORKSPACE/virtualenvs"
export SCRATCH_DIR="$WORKSPACE/scratch"

create_dir $WORKSPACE
create_dir $VENV_HOME
create_dir $SCRATCH_DIR
