
# goto
alias home='cd $HOME'
alias desktop='cd $HOME/Desktop'
alias workspace='cd $HOME/workspace/'

# utility
alias c='clear'
alias clea='clear'
alias claer='clear'
alias clera='clear'

alias l='ls -larth $argv'
alias ipme="ipconfig getifaddr en0"
alias dcd='docker-compose down --remove-orphans'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gwd='pwd | pbcopy'

alias flush_dns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

alias aws_env_clip='tail -n 5 ~/.aws/credentials | head -n 2 | pbcopy'

# python
# alias python='python3'
alias pip='python3 -m pip'

# reload
alias r_fish='source $HOME/.config/fish/config.fish'

# edit configs
alias e_vim='$EDITOR $HOME/.vimrc'
alias e_tmux='$EDITOR $HOME/.tmux.conf.local/'

# ssh
alias devops='ssh -A devops.zp.int'

alias disinfect='brew update && brew upgrade && brew cleanup -s && brew doctor'

alias exx='exa --all --long --header --group --group-directories-first --time-style long-iso --git --git-ignore'