set fish_greeting 

export WORKSPACE_HOME="$HOME/workspace"
if ! test -d $WORKSPACE_HOME
    mkdir -p $WORKSPACE_HOME
    echo $WORKSPACE_HOME did not exist, created
end

if ! test -d $WORKSPACE_HOME/virtualenvs/
    mkdir -p $WORKSPACE_HOME/virtualenvs/
    echo $WORKSPACE_HOME/virtualenvs/ did not exist, created
end

if test (hostname) = "laputa"
    source $_FISH_HOME/laputa.fish
end

if test (hostname) = "beastmode"
    source $_FISH_HOME/beastmode.fish
end

if test (hostname) = "carter-landis-C02CC2Q1MD6P"
    source $_FISH_HOME/gusto.fish
end
