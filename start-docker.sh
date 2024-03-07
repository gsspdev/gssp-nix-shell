docker run -it \
-v $(pwd)/workdir \
-v $(pwd)/shells/gssp-nvchad:/shells/gssp-nvchad \
-v $(pwd)/shells/gssp-spacemacs:/shells/gssp-spacemacs \
-v $(pwd)/shells/gssp-julia:/shells/gssp-julia \
-v $(pwd)/default.nix:/default.nix \
-v $(pwd)/nvchad.sh:/nvchad.sh \
-v $(pwd)/spacemacs.sh:/spacemacs.sh \
-v $(pwd)/julia.sh:/julia.sh \
-v $(pwd)/default.sh:/default.sh \
-v $(pwd)/.git \
-v $(pwd)/.gitignore \
-v $(pwd)/flake.nix:/flake.nix \
-v $(pwd)/nvchad:/nvchad \
-v $(pwd)/bash_scripts:/bash_scripts \
docker.io/nixos/nix
