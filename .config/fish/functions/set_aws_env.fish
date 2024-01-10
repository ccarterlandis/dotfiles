# Defined in /var/folders/rx/bmn1n98d4hd2mvfkc_5zh1nr0000gn/T//fish.MaIDYW/set_aws_env.fish @ line 2
function set_aws_env
    pushd $HOME;
    eval (python workspace/scripts/aws_credentials/get_creds_from_file.py);
    popd
end
