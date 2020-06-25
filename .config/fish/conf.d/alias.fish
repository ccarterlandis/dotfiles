
# goto
alias home='cd $HOME'
alias g_fish='cd $HOME/.config/fish/'

# utility
alias l='ls -larth $argv'
alias c='clear'
alias ipme="ipconfig getifaddr en0"
alias dcd='docker-compose down --remove-orphans'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# reload
alias r_fish='source $HOME/.config/fish/config.fish'

# edit configs
alias e_vim='vim $HOME/.vimrc'
alias e_tmux='vim $HOME/.tmux.conf.local/'
