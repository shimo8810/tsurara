{ pkgs, lib, ... }: {
  # zsh configuration
  programs.zsh = {
    # zprof.enable = true;
    enable = true;
    shellAliases = {
      ls = "lsd";
      cat = "bat";
      grep = "rg";
    };
    dotDir = ".config/zsh";

    history.size = 100000;
    initExtra = lib.fileContents ./zshrc;
  };
}
