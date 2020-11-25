function venv_destroy
    if test -d $VENV_HOME/$argv/
        echo "destroying virtualenv..."
        rm -rf $VENV_HOME/$argv/
        echo "done!"
    else
        echo "virtualenv with that name not found"
        exit 1
    end
end