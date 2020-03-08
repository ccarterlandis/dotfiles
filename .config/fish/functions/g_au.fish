function g_au

    cd $HOME/Projects/Work/augur;
    source $HOME/.virtualenvs/augur_env/bin/activate.fish

    set -l usage "usage: g_au [-s]"
    set -l tmp (getopt -o h --long help -- $argv)
    or begin
        echo $usage
        return 2
    end

    set -l opts
    eval set opts $tmp

    for opt in $opts
        switch $opt
            case -h
                echo $usage
                return 0
            case --
                break
            case '-*'
                echo "unknown option: $opt"
                echo $usage
                return 1
        end
    end

    
    if test (count $argv) -eq 1
        switch $argv[1]
            case -s
              subl --project ../augur.sublime-project
        end
    end
end
