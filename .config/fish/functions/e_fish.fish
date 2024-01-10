# Defined in /var/folders/1q/5g9khz5x3kx8n_28_pg810jr0000gn/T//fish.6o7scZ/e_fish.fish @ line 2
function e_fish
    if [ (count $argv) -eq 0 ]
        $EDITOR $_CONFIG_HOME/fish        
        return 0
    end

    if [ (count $argv) -eq 2 ]
        switch $argv[1]
            case function
                set sublocation fish/functions
            case conf
                set sublocation fish/conf.d
            case base
                set sublocation fish
            case '*'
                echo Option $argv[1] not understood
                return 1
        end
    else
        echo "Not enough args provided."
        return 1
    end

    $EDITOR $_CONFIG_HOME/$sublocation/$argv[2].fish
    source $_CONFIG_HOME/fish/config.fish
    echo "Config reloaded"
end
