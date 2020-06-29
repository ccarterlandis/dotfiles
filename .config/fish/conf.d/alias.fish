
# goto
alias home='cd $HOME'

# utility
alias l='ls -larth $argv'
alias c='clear'
alias ipme="ipconfig getifaddr en0"
alias dcd='docker-compose down --remove-orphans'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias s_='subl -n -w'

# reload
alias r_fish='source $HOME/.config/fish/config.fish'

# edit configs
alias e_vim='$EDITOR $HOME/.vimrc'
alias e_tmux='$EDITOR $HOME/.tmux.conf.local/'
