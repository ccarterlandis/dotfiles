#!/usr/bin/local/fish

set fish_greeting Salutations!

if test (hostname) = "laputa"
    source $_FISH_HOME/laputa.fish
end

if test (hostname) = "facetrust.io"
    source $_FISH_HOME/facetrust.fish
end

if test (hostname) = "carter-landis-C02F13V2MD6M"
    source $_FISH_HOME/gusto.fish
end


# Hishtory Config:
export PATH="$PATH:/Users/carter.landis/.hishtory"
source /Users/carter.landis/.hishtory/config.fish
