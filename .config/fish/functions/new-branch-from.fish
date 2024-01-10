function new-branch-from

    argparse --name=new-branch-from 'h/help' 'n/new-branch=' 'b/base-branch=' -- $argv
    or return

    if set -q _flag_help
        echo "Usage: new-branch-from -n new_branch -b base_branch"
        echo "Omit base_branch to use the default"
    end

    set current_branch (git rev-parse --abbrev-ref HEAD)

    set result (_is_git_dirty)
    if test $result -eq 1
        echo "Working tree is dirty. Stashing before checkout..."
        git add -A
        git stash save "Switching from $current_branch to $_flag_new_branch"
    end

    if set -q _flag_base_branch
        git checkout $_flag_base_branch
    else
        set default_branch (git remote show origin | grep 'HEAD branch' | cut -d' ' -f5)
        git checkout $default_branch
    end

    git pull

    git checkout -b $_flag_new_branch
    git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)
end