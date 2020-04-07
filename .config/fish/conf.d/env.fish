
# Editor
export EDITOR='vim'

# Docker
export DOCKER_BUILDKIT=1

# Prompt
export pure_symbol_prompt="∫"


if test (hostname) = "laputa"
    export JAVA_HOME=(/usr/libexec/java_home)
    # Because macOS doesn't like Python multithreading
    export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
end

if test (hostname) = "beastmode"
    set PATH $PATH /usr/local/go/bin
end

if which go > /dev/null 2>&1
    set PATH $PATH (go env GOBIN)
end
