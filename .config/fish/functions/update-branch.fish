function update-branch


    argparse --name=update-branch-args 'h/help' 'm/automerge' 'p/autopush' 't/target=' -- $argv
    or return

    if ! set -q _flag_target
        set _flag_target (git rev-parse --abbrev-ref origin/HEAD | cut -d / -f 2)
    end

    set BRANCH (git rev-parse --abbrev-ref HEAD)

    set git_dirty (_is_git_dirty)
    if test $git_dirty -eq 1
        echo "Working tree is dirty. Stashing before checkout..."
        git add -A
        git stash save "Updating $BRANCH with $_flag_target"
    end

    git checkout -q $_flag_target
    git pull
    git checkout -q $BRANCH

    if set -q _flag_automerge
        echo "Automerging..."
        git merge $_flag_target
        echo
        echo "**********************"
        echo "Don't forget to push!"
        echo "**********************"
        echo
    end

    if set -q _flag_autopush
        echo "Pushing..."
        git push
    end

    if test $git_dirty -eq 1
        git stash pop
    end

    echo
    echo "**********************************"
    echo "Don't forget to merge and/or push!"
    echo "**********************************"
    echo

    return 0
end
