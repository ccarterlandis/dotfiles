function subl_proj
    if test $WORKSPACE/subl_projects/$argv.sublime-project
        subl $WORKSPACE/subl_projects/$argv.sublime-project
    else
        echo Project $argv not found.
    end
end