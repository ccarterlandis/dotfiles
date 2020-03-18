
# Editor
export EDITOR='vim'

# Docker
export DOCKER_BUILDKIT=1

# Prompt
export pure_symbol_prompt="∫"

# Because macOS doesn't like Python multithreading
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES


if which go > /dev/null 2>&1
    set PATH $PATH (go env GOBIN)
end

# Java
if test (uname) = "Darwin"
    export JAVA_HOME=(/usr/libexec/java_home)
end
