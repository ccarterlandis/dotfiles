# Defined in /var/folders/jz/bsr_rmn930z9d6fb_ngc_64h0000gn/T//fish.A6PZjC/update_config.fish @ line 2
function update_config
	clean_config
    /bin/bash $HOME/.config/fish/functions/clean_config.sh pull origin master
    clean_config
end
