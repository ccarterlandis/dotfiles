function tinit
    if count $argv > /dev/null
        set session $argv
        tmux attach -t $session || tmux new-session -s $session
    else
        echo "No session name provided"
    end
end 
