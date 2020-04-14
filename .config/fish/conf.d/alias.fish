
# goto
alias home='cd $HOME'
alias desktop='cd $HOME/desktop'
alias doc='cd $HOME/documents'
alias projects='cd $HOME/projects'
alias work='cd $HOME/projects/work/'
alias school='cd $HOME/school/_ss20/'
alias topics='cd $HOME/school/_ss20/cs4080/'
alias cloud='cd $HOME/school/_ss20/cloud/labs/'
alias g_fish='cd $HOME/.config/fish/'

# utility
alias l='ls -larth $argv'
alias c='clear'
alias ipme="ipconfig getifaddr en0"
alias dcd='docker-compose down --remove-orphans'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias recipes='cd $HOME/documents/recipes'

alias b='buku --suggest'

# augur quickload
alias augur_go='augur run --disable-housekeeper > /dev/null 2>&1 &'

# reload
alias r_fish='source $HOME/.config/fish/config.fish'
alias r_tmux='tmux source-file $HOME/.tmux.conf'

# edit configs
alias e_vim='vim $HOME/.vimrc'
alias e_tmux='vim $HOME/.tmux.conf.local/'

# python
alias python='python3 $argv'

# omni/geni
alias omni='/Applications/omniTools-2.10/omni.app/Contents/MacOS/omni'
alias stitcher='/Applications/omniTools-2.10/stitcher.app/Contents/MacOS/stitcher'
alias omni-configure='/Applications/omniTools-2.10/omni-configure.app/Contents/MacOS/omni-configure'
alias readyToLogin='/Applications/omniTools-2.10/readyToLogin.app/Contents/MacOS/readyToLogin'
alias addMemberToSliceAndSlivers='/Applications/omniTools-2.10/addMemberToSliceAndSlivers.app/Contents/MacOS/addMemberToSliceAndSlivers'
alias clear-passphrases='/Applications/omniTools-2.10/clear-passphrases.app/Contents/MacOS/clear-passphrases'
alias remote-execute='/Applications/omniTools-2.10/remote-execute.app/Contents/MacOS/remote-execute'
