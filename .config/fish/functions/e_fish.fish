# Defined in /var/folders/1q/5g9khz5x3kx8n_28_pg810jr0000gn/T//fish.6o7scZ/e_fish.fish @ line 2
function e_fish
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


    $EDITOR $config_home/$sublocation/$argv[2].fish
    source $config_home/fish/config.fish
    echo "Config reloaded"
end
