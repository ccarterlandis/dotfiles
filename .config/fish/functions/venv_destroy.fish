function venv_destroy
    if test -d $WORKSPACE_HOME/virtualenvs/$argv/
        echo "destroying virtualenv..."
        rm -rf $WORKSPACE_HOME/virtualenvs/$argv/
        echo "done!"
    else
        echo "virtualenv with that name not found"
        exit 1
    end
end