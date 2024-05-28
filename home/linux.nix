{ config, pkgs, lib, ... }:

{
  home.username = "shimo";
  home.homeDirectory = "/home/shimo";

  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    bottom
    duf
    dust
    fd
    fzf
    go-task
    hackgen-nf-font
    just
    lsd
    nixpkgs-fmt
    ripgrep
  ];

  home.file = { };

  home.sessionVariables = { };

  programs.home-manager.enable = true;

  programs.bat = {
    enable = true;
    config.theme = "Nord";
  };

  imports = [
    ./alacritty
    ./git
    ./neovim
    ./zsh
  ];

}
