set fish_greeting 

if test (hostname) = "laputa"
    source $_FISH_HOME/laputa.fish
end

if test (hostname) = "beastmode"
    source $_FISH_HOME/beastmode.fish
end

if test (hostname) = "carter-landis-C02CC2Q1MD6P"
    source $_FISH_HOME/gusto.fish
end

if which go > /dev/null 2>&1
    set PATH $PATH (go env GOBIN)
end
