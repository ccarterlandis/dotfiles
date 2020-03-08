function dbd
    echo "Stopping container..."
    docker stop $argv
    echo "Removing container..."
    docker rm $argv
end

