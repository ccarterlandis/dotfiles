function set_augur_config
    set config_home $HOME'/Projects/Work/configs'
    export AUGUR_CONFIG_FILE=$config_home/$argv.config.json
end

