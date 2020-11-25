function venv_activate
    if test -d $VENV_HOME/$argv/
        source $VENV_HOME/$argv/bin/activate.fish
    else
        echo "couldn't find a virtualenv with that name"
        return 1
    end
end