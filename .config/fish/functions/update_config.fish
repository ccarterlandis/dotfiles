# Defined in /var/folders/jz/bsr_rmn930z9d6fb_ngc_64h0000gn/T//fish.A6PZjC/update_config.fish @ line 2
function update_config
	clean_config
    /usr/local/bin/bash $_FISH_HOME/functions/clean_config.sh pull origin master
end
