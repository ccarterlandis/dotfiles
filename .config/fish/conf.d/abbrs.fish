# Abbreviations

# Git
# staging
abbr ga 'git add'
abbr gaa 'git add -A'

# commit
abbr gcm 'git commit -m'
abbr gcf 'git commit --amend; git push -f'

# status
abbr gs 'git status'
abbr gstat 'git status'

abbr grt 'git restore'
abbr grts 'git restore --staged'
abbr grct 'git restore --staged .; git restore .'

# remote
abbr gpu 'git push'
abbr gpl 'git pull'
abbr gpsu 'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)'
abbr gpf 'git push --force'

# diff
abbr gdh "git diff HEAD --patch-with-stat --raw --ignore-space-at-eol -- . ':(exclude)package-lock.json' ':(exclude)package.json'"

# branching
abbr gco 'git checkout'
abbr gcb 'git checkout -b'

# history
abbr gbl 'git blame -w'
abbr glp 'git log --graph --pretty=format:\'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\' --abbrev-commit'
abbr gls 'git log --abbrev-commit --decorate -p -3'
abbr glo 'git log --pretty=format:\'%h\' -n 1'

# stashing
abbr gst 'git stash'
abbr gstu 'git stash -u'
abbr gst 'git stash save'
abbr gsp 'git stash pop'
abbr gsl 'git stash list'
abbr gsk 'git stash save --keep-index'
abbr gsd 'git stash drop'
abbr gcleartree 'git add -A; git stash; git stash drop 0'

# docker
abbr dc 'docker-compose'
