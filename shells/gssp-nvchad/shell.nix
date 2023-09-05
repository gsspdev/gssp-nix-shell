let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.python3
      pkgs.curl
      pkgs.vim
      pkgs.git
      pkgs.nodejs
      pkgs.neovim
      pkgs.ripgrep
      pkgs.wget
      pkgs.alacritty
    ];

#      env = {
#       # some credentials
#       SOME_USER = "some_user";
#       SOME_PASSWORD = "some_password";
#     };

    # Set shell prompt format, ensure that 'should_exist.txt exists'
    shellHook = ''
      export PS1="\u@\h >>> "
      touch touch-test.txt
      curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
      git clone https://github.com/NvChad/NvChad ~/.config/nvim
      echo "i guess it's bi"
    '';
  }
  
