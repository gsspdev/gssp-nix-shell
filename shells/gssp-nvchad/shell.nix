let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.git
      pkgs.curl
      pkgs.nodejs
      pkgs.unzip
      pkgs.vim
      pkgs.neovim
    ];

#      env = {
#       # some credentials
#       SOME_USER = "some_user";
#       SOME_PASSWORD = "some_password";
#     };

    # Set shell prompt format, ensure that 'should_exist.txt exists'
    shellHook = ''
      export PS1="\u@\h >>> "
      curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
      git clone https://github.com/NvChad/NvChad ~/.config/nvim
      nvim
    '';
  }
  
