{ pkgs, ... }:

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
    hyperfine
    just
    lsd
    nixd
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
    ./helix
    ./neovim
    ./sheldon
    ./tmux
    ./zellij
    ./zsh
    ./wayland
  ];

}
