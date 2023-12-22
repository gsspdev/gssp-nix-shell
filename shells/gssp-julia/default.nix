#! /usr/bin/env nix-shell
#! nix-shell bash --packages git
git clone https://github.com/JuliaLang/julia.
cd julia
./julia

let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.nix
      pkgs.bashInteractive
      pkgs.coreutils-full
      pkgs.gnutar
      pkgs.gzip
      pkgs.gnugrep
      pkgs.which
      pkgs.curl
      pkgs.less
      pkgs.wget
      pkgs.man
      pkgs.cacert.out
      pkgs.findutils
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
      git clone https://github.com/JuliaLang/julia.git
      cd julia
      ./julia
      ;
  }
  
