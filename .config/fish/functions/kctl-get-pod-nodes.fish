function kctl-get-pod-nodes

    argparse --name=kctl-get-pod-nodes 'n/namespace=' 'c/container=' 's/short' -- $argv
    or return

    # if not is_logged_into_teleport
    #     echo Nog logged into Teleport. Kubectl commands will not work.
    #     return 1
    # end

    set custom_columns '-o=custom-columns=Name:.metadata.name,STATUS:.status.phase,NODE:.spec.nodeName'
    set flags '--field-selector=status.phase=Running'

    if set -q _flag_container
        if set -q _flag_short
            kubectl -n $_flag_namespace get pods $custom_columns $flags | grep $_flag_container | head -n 1 | cut -d " " -f 1 | string trim
        else
            kubectl -n $_flag_namespace get pods $custom_columns $flags | grep $_flag_container
        end
    else
        kubectl -n $_flag_namespace get pods $custom_columns $flags
    end
end