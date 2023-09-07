docker run -it \
-v $(pwd)/shells/gssp-nvchad:/shells/gssp-nvchad \
-v $(pwd)/shells/gssp-spacemacs:/shells/gssp-spacemacs \
-v $(pwd)/shells/julia-shell:/shells/julia-shell \
-v $(pwd)/default.nix:/default.nix \
-v $(pwd)/nvchad.sh:/nvchad.sh \
-v $(pwd)/julia.sh:/julia.sh \
-v $(pwd)/default.sh:/default.sh \
docker.io/nixos/nix
