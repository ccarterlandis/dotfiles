# Defined in /var/folders/jz/bsr_rmn930z9d6fb_ngc_64h0000gn/T//fish.85eBFN/reflash_keyboard.fish @ line 1
function reflash_keyboard

    set layout spacefiish

    if [ (count $argv) -gt 1 ]
        echo Too many arguments, please provide only 1 layout name. Exiting...
        return 1
    end

    set layout $argv[1]
    echo $layout.hex

	$HOME/go/bin/wally-cli $HOME/.config/ccarterlandis/$layout.hex
end
