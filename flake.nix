{
  description = "My SpaceVim Configuration Flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable"; # Use the appropriate Nixpkgs version.
    spacevim-src.url = "github:SpaceVim/SpaceVim";
  };

  outputs = { self, nixpkgs, spacevim-src }: {
    nixosConfigurations.mySpaceVimConfig = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux"; # Adjust for your system.
      modules = [
        {
          imports = [
            # Include SpaceVim as a module.
            "${spacevim-src}/nixos/modules/services/desktops/spacevim.nix"
          ];
          # Customize your SpaceVim configuration here.
          config = {
            spacevim = {
              enable = true;
              layers = [
                "auto-completion"
                "git"
                "lang#python"
                "lang#javascript"
                "lang#markdown"
                "version-control"
                "shell"
                "ui"
              ];
              # Add your own custom SpaceVim settings here.
            };
          };
        }
      ];
    };
  };
}

