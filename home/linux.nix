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
    nordic
    candy-icons
    tela-circle-icon-theme
    orchis-theme
    graphite-gtk-theme
    tokyonight-gtk-theme
    zafiro-icons
    nordzy-icon-theme
    nordzy-cursor-theme
    vimix-cursors
    rust-bin.stable.latest.default
  ];

  home.file = { };

  home.sessionVariables = { };

  programs.home-manager.enable = true;

  programs.bat = {
    enable = true;
    config.theme = "Nord";
  };

  imports = [
    # ./alacritty
    ./git
    ./helix
    ./neovim
    ./sheldon
    ./tmux
    ./zellij
    ./zsh
  ];

}
