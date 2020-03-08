function kill_freedom
    ps -efax | grep "Freedom" |  awk '{print $2}' | xargs kill
end