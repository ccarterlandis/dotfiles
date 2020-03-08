function set_augur_config
    set config_home $HOME'/Projects/Work/configs'
    set config_file $config_home/$argv.config.json
    if test -f $config_file
        export AUGUR_CONFIG_FILE=$config_file
    else
        echo $config_file does not exist
    end
end

