FROM nixos:latest

WORKDIR /workdir
COPY ./default.nix .
RUN nix-shell default.nix
