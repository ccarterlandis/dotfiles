
# Editor
export EDITOR='subl -w'

# Docker
export DOCKER_BUILDKIT=1

# Prompt
export pure_symbol_prompt="∫"

# Because macOS doesn't like Python multithreading
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

set PATH $PATH (go env GOBIN)

# Java
export JAVA_HOME=(/usr/libexec/java_home)
