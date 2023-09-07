#! /usr/bin/env nix-shell
#! nix-shell bash --packages bash git
git clone https://github.com/JuliaLang/julia.git
cd julia
git checkout v1.9.3
./julia
#! /usr/bin/env nix-shell
nixos-rebuild switch
