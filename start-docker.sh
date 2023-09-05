docker run -it \
-v $(pwd)/gssp-nvchad:/gssp-nvchad \
-v $(pwd)/gssp-shell:/gssp-shell \
-v $(pwd)/gssp-spacemacs:/gssp-spacemacs \
-v $(pwd)/gssp-spacevim:/gssp-spacevim \
-v $(pwd)/python-shell:/python-shell \
-v $(pwd)/rust-shell:/rust-shell \
nixos/nix
