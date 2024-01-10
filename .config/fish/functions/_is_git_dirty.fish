function _is_git_dirty
    set --local is_git_dirty (
        # The first checks for staged changes, the second for unstaged ones.
        # We put them in this order because checking staged changes is *fast*.
        not command git diff-index --ignore-submodules --cached --quiet HEAD -- >/dev/null 2>&1
        or not command git diff --ignore-submodules --no-ext-diff --quiet --exit-code >/dev/null 2>&1
        and echo "true"
    )

    if test -n "$is_git_dirty" # is dirty
        echo 1
        return 1
    else # is not dirty
        echo 0
        return 0
    end
end