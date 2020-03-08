function _pure_prompt_git_dirty
    set --local git_is_dirty_symbol
    set --local git_is_dirty_color

    set --local is_git_dirty (command git status --porcelain --ignore-submodules 2>/dev/null)
    if test -n "$is_git_dirty"  # untracked or un-commited files
        set git_is_dirty_symbol "$pure_symbol_git_dirty"
        set git_is_dirty_color "$pure_color_git_dirty"
    else
        set git_is_dirty_symbol "$pure_symbol_git_clean"
        set git_is_dirty_color "$pure_color_git_clean" 
    end

    echo (set_color white)"[""$git_is_dirty_color$git_is_dirty_symbol"(set_color white)"]"
end
