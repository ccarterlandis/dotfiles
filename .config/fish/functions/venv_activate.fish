function venv_activate
    if test -d $WORKSPACE_HOME/virtualenvs/$argv/
        source $WORKSPACE_HOME/virtualenvs/$argv/bin/activate.fish
    else
        echo "couldn't find a virtualenv with that name"
        return 1
    end
end