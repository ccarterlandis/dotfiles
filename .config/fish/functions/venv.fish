function venv

    if [ (count $argv) -eq 0 ]
        echo Not enough arguments, exiting...
        return 1
    end

    set COMMAND $argv[1]

    if test "$COMMAND" = "list"; or test "$COMMAND" = "ls"
        ls -1 $WORKSPACE/virtualenvs
        return 0
    end

    if [ (count $argv) -ne 2 ]
        echo Incorrect number of arguments \(must be exactly 2\), exiting...
        return 2
    end

    switch "$COMMAND"
        case "create"
            venv_create $argv[2]
        case "rm"
            venv_destroy $argv[2]
        case "activate"
            venv_activate $argv[2]
        case "*"
            echo venv command not understood, exiting...
            return 3
    end

end