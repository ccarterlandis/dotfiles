function venv_create
    if test -n "$VIRTUAL_ENV"
        deactivate
    end
    if test -d $WORKSPACE_HOME/virtualenvs/$argv/
        echo "virtualenv already exists. recreating..."
        rm -rf $WORKSPACE_HOME/virtualenvs/$argv/
        python3 -m venv $WORKSPACE_HOME/virtualenvs/$argv/
        echo "done!"
    else
        echo "creating..."
        python3 -m venv $WORKSPACE_HOME/virtualenvs/$argv/
        echo "done!"
    end
    venv_activate $argv
end