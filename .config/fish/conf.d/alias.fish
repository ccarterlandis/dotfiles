
# goto
alias home='cd $HOME'
alias school='cd $HOME/school/_FS20/'
alias hpc='cd $HOME/school/_FS20/hpc_code'
alias networks='cd $HOME/school/_FS20/networks'
alias 4050='cd $HOME/school/_FS20/4050'
alias capstone='cd $HOME/school/_FS20/capstone'

# utility
alias c='clear'
alias clea='clear'
alias claer='clear'
alias l='ls -larth $argv'
alias ipme="ipconfig getifaddr en0"
alias dcd='docker-compose down --remove-orphans'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias s_='subl -n -w'

alias flush_dns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# python
alias python='python3'
alias pip='python3 -m pip'

# reload
alias r_fish='source $HOME/.config/fish/config.fish'

# edit configs
alias e_vim='$EDITOR $HOME/.vimrc'
alias e_tmux='$EDITOR $HOME/.tmux.conf.local/'
