function is_logged_into_teleport
    if test (ls ~/.tsh 2> /dev/null | wc -l | string trim -l) = 0
        return 1
    else
        return 0
    end
    # return 0
end