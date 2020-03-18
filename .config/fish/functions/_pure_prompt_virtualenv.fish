function _pure_prompt_virtualenv --description "Display virtualenv directory"
    if test -n "$VIRTUAL_ENV"
        set --local virtualenv (basename "$VIRTUAL_ENV")
        set --local virtualenv_color (_pure_set_color $pure_color_virtualenv)

        echo (set_color white)"(""$virtualenv_color$virtualenv"(set_color white)")"
    end
end
