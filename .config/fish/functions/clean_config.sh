#!/bin/bash

/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout

if [ $? = 0 ]; then
  echo "Checked out config.";
else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
