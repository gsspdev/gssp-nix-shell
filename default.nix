let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.python3
      pkgs.curl
      pkgs.vim
      pkgs.neovim
      pkgs.rustup
      pkgs.tree
      pkgs.gh
      pkgs.git
      pkgs.fish
      pkgs.gcc
      pkgs.findutils
      pkgs.automake
      pkgs.black
      pkgs.cmake
      pkgs.wget
      pkgs.ripgrep
      pkgs.ruby
      pkgs.starship
      pkgs.yarn
      pkgs.htop
      pkgs.bun
      pkgs.firefox
    ];

#      env = {
#       # some credentials
#       SOME_USER = "some_user";
#       SOME_PASSWORD = "some_password";
#     };

    # Set shell prompt format, ensure that 'should_exist.txt exists'
    shellHook = ''
    
    '';
  }
  
