function venv_create
    if test -n "$VIRTUAL_ENV"
        deactivate
    end
    if test -d $VENV_HOME/$argv/
        echo "virtualenv already exists. recreating..."
        rm -rf $VENV_HOME/$argv/
        python3 -m venv $VENV_HOME/$argv/
        echo "done!"
    else
        echo "creating..."
        python3 -m venv $VENV_HOME/$argv/
        echo "done!"
    end
    venv_activate $argv
end