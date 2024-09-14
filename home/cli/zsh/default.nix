{ lib, pkgs, ... }:
{
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

  # shelldon, zsh package manager
  home.packages = with pkgs; [
    sheldon
  ];

  home.file = {
    ".config/sheldon/plugins.toml".source = ./plugins.toml;
  };
}
