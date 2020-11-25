set fish_greeting

if test (hostname) = "laputa"
    source $_FISH_HOME/laputa.fish
end

if test (hostname) = "facetrust.io"
    source $_FISH_HOME/facetrust.fish
end
