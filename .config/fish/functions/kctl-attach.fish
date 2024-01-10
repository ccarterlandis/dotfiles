function kctl-attach

    argparse --name=kctl-attach 'h/help' 'n/namespace=' 'c/container=' 'a/autosearch' -- $argv
    or return

    # if not is_logged_into_teleport
    #     echo Nog logged into Teleport. Kubectl commands will not work.
    #     return 1
    # end

    set container_name (kctl-get-pod-nodes -n $_flag_namespace -c $_flag_container -s)
    kubectl -n $_flag_namespace exec --stdin --tty $container_name -- /bin/bash
    # if set -q $_flag_autosearch
    # else
    #     kubectl -n $_flag_namespace exec --stdin --tty $_flag_container -- /bin/bash
    # end
end