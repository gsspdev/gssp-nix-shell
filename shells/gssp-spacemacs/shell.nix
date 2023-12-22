let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.ack
      pkgs.git
      pkgs.curl
      # pkgs.tar
      pkgs.nodejs
      pkgs.unzip
      pkgs.vim
      pkgs.neovim
      pkgs.emacs
      pkgs.ripgrep
      pkgs.silver-searcher
    ];

#      env = {
#       # some credentials
#       SOME_USER = "some_user";
#       SOME_PASSWORD = "some_password";
#     };

    # Set shell prompt format, ensure that 'should_exist.txt exists'
    shellHook = ''
      git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
      emacs
      export PS1="\u@\h >>> "
    '';
  }
  
