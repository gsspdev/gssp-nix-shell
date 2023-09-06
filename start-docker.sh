docker run -it \
-v $(pwd)/shells/gssp-nvchad:/shells/gssp-nvchad \
-v $(pwd)/shells/gssp-spacemacs:/shells/gssp-spacemacs \
-v $(pwd)/shells/python-shell:/shells/python-shell \
-v $(pwd)/shells/rust-shell:/shells/rust-shell \
-v $(pwd)/default.nix:/default.nix \
-v $(pwd)/nvchad.sh:/nvchad.sh \
-v $(pwd)/default.sh:/default.sh \
docker.io/nixos/nix
