docker run -it \
-v $(pwd)/shells/gssp-nvchad:/shells/gssp-nvchad \
-v $(pwd)/shells/gssp-spacemacs:/shells/gssp-spacemacs \
-v $(pwd)/shells/python-shell:/shells/python-shell \
-v $(pwd)/shells/rust-shell:/shells/rust-shell \
-v $(pwd)/default.nix:/default.nix \
docker.io/nixos/nix
