# Abbreviations

# Git
# staging
abbr ga 'git add'
abbr gaa 'git add -A'
abbr gcs 'git commit -s'
abbr gs 'git status'

# remote
abbr gpu 'git push'
abbr gpl 'git pull'
abbr gsu 'git push --set-upstream origin'
abbr gfc 'git add -A; git commit --amend; git push -f'

# branching
abbr gco 'git checkout'
abbr gcb 'git checkout -b'

# history
abbr gbl 'git blame -w'
abbr glp 'git log --graph --pretty=format:\'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\' --abbrev-commit'
abbr gls 'git log --abbrev-commit --decorate -p -3'
abbr glo 'git log --pretty=format:\'%h\' -n 1'

# stash
abbr gst 'git stash'
abbr gsp 'git stash pop'
abbr gsl 'git stash list'
abbr gsk 'git add -A; git stash save --keep-index'

abbr dc 'docker-compose'