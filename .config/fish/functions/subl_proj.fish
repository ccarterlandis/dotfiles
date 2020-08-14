function subl_proj
    if test $WORKSPACE_HOME/subl_projects/$argv.sublime-project
        subl $WORKSPACE_HOME/subl_projects/$argv.sublime-project
    else
        echo Project $argv not found.
    end
end