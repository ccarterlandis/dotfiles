function edit_fish
    set config_home "$HOME/.config/"
    if [ (count $argv) -eq 2 ]
        switch $argv[1]
            case function
                set sublocation fish/functions
            case conf
                set sublocation fish/conf.d
            case base
                set sublocation fish/
            case '*'
                echo Option $argv[1] not understood
        end
    else
        echo "Not enough args provided."
    end


    vim $config_home/$sublocation/$argv[2].fish
    source $HOME/.config/fish/config.fish
    echo "Config reloaded"
end
