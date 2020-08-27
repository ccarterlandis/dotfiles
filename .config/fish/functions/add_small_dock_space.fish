# Defined in /var/folders/jz/bsr_rmn930z9d6fb_ngc_64h0000gn/T//fish.rVBJX7/add_small_dock_space.fish @ line 1
function add_small_dock_space
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'
    killall Dock
end
