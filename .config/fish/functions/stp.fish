function stp -d "Small CLI utility for controlling ST3 projects"

    set project_dir $WORKSPACE/sublime-projects

    if [ (count $argv) -eq 0 ]
        echo "Available commands"
        echo "******************"
        echo
        echo "add project_name path"
        echo "open project_name"
        echo "open rm"
        echo Not enough arguments, exiting...
        return 1
    end

    set command $argv[1]

    if test $command = "ls"
        ls -1 $project_dir/ | grep sublime-project --color=never
        return 0
    end

    set project_name $argv[2]
    set project_path $project_dir/$project_name.sublime-project

    if test "$command" != "add"
        if ! test -e $project_path
            echo Invalid command: project $project_path not found
            return 2
        end
    end

    if [ (count $argv) -lt 2 ]
        echo At least 2 arguments are needed for all operations besides ls
        echo Incorrect number of arguments, exiting...
        return 1
    end

    switch $command
        case "add"
            if [ (count $argv) -ne 3 ]
                echo Incorrect number of arguments, exiting...
                echo "Correct form is add <name> <path>"
                return 1
            end

            set path $argv[3]
            if ! test -d $path
                echo Desired path does not exist, exiting...
                return 3
            end

            echo "
            {
            \"folders\":
                [
                    {
                        \"path\": \"$path\"
                    }
                ]
            }
            " > $project_path
        case "open"
            subl --project $project_path
        case "rm"
            rm -rf $project_path
            echo Project $project_path removed
        case "*"
            echo stp command not understood
            return 4
    end
end
