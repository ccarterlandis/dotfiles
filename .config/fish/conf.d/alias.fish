
# goto
alias home='cd ~'
alias desktop='cd ~/desktop'
alias doc='cd ~/documents'
alias projects='cd ~/projects'
alias work='cd ~/projects/work/'
alias school='cd ~/school/_ss20/'
alias topics='cd ~/school/_ss20/cs4080/'
alias cloud='cd ~/school/_ss20/cloud/labs/'
alias g_fish='cd ~/.config/fish/'
alias g_config='cd ~/.cfg'

# utility
alias l='ls -larth $argv'
alias ipme="ipconfig getifaddr en0"
alias dcd='docker-compose down --remove-orphans'
alias karabiner_paths='$HOME/.config/karabiner/karabiner.json $HOME/Projects/Personal/HyperGenerator/mappings.txt'

# reload
alias r_fish='source ~/.config/fish/config.fish'
alias r_tmux='tmux source-file ~/.tmux.conf'

# edit configs
alias e_vim='vim ~/.vimrc'
alias e_tmux='vim ~/.tmux.conf.local/; r_fish'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# omni/geni
alias omni='/Applications/omniTools-2.10/omni.app/Contents/MacOS/omni'
alias stitcher='/Applications/omniTools-2.10/stitcher.app/Contents/MacOS/stitcher'
alias omni-configure='/Applications/omniTools-2.10/omni-configure.app/Contents/MacOS/omni-configure'
alias readyToLogin='/Applications/omniTools-2.10/readyToLogin.app/Contents/MacOS/readyToLogin'
alias addMemberToSliceAndSlivers='/Applications/omniTools-2.10/addMemberToSliceAndSlivers.app/Contents/MacOS/addMemberToSliceAndSlivers'
alias clear-passphrases='/Applications/omniTools-2.10/clear-passphrases.app/Contents/MacOS/clear-passphrases'
alias remote-execute='/Applications/omniTools-2.10/remote-execute.app/Contents/MacOS/remote-execute'

