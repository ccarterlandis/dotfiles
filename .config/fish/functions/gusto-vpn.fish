function gusto-vpn
    set is_connected (/opt/cisco/anyconnect/bin/vpn state | grep -o 'state\: Connected' | wc -l | tr -d '[:space:]')

    if test $is_connected -eq 0
        echo "connecting..."
        echo push | /opt/cisco/anyconnect/bin/vpn connect 'Gusto US Rockies'
        echo "done!"
    else
        echo "already connected"
    end
end
