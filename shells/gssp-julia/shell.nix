let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.curl
      pkgs.vim
      pkgs.julia-bin
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
      nixos-rebuild switch 
    '';
  }
  
