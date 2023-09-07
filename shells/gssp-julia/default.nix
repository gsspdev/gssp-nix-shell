#! /usr/bin/env nix-shell
#! nix-shell -i python --packages python pythonPackages.prettytable

let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.curl
      pkgs.vim
      pkgs.julia-lts-bin
      pkgs.julia
      pkgs.firefox-with-plugins
      pkgs.chromium
    ];

#      env = {
#       # some credentials
#       SOME_USER = "some_user";
#       SOME_PASSWORD = "some_password";
#     };

    # Set shell prompt format, ensure that 'should_exist.txt exists'
    shellHook = ''
      export PS1="\u@\h >>> "
    ''
    curl -fsSL https://install.julialang.org | sh
      git clone https://github.com/JuliaLang/julia.git
      cd julia
      ./julia
      nixos-rebuild switch
      ;
  }
  
