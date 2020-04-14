# Defined in /var/folders/jz/bsr_rmn930z9d6fb_ngc_64h0000gn/T//fish.H4k0aF/e_karabiner.fish @ line 2
function e_karabiner
	cd $HOME/projects/personal/hyper-helper
    vim mappings.txt
    python3 create.py
    cd -
end
