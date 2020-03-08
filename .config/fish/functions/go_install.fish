function go_install 
    if go install
        $argv
    else
        echo "Build failed. Terminating."
    end
end
