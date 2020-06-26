# Defined in /var/folders/1q/5g9khz5x3kx8n_28_pg810jr0000gn/T//fish.brwVkl/whereami.fish @ line 1
function whereami
    echo user: (whoami)
    echo computer: (echo $COMPUTER_NAME)
    echo location on filesystem: (pwd)
    echo ip address: (ipme)
end
