function reset_env
    pip freeze > temp.txt
    pip uninstall -r temp.txt -y
    rm temp.txt
end
