function venv_create
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
end