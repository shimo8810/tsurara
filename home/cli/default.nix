{ pkgs, ... }:

{
  imports = [
    ./bat.nix
    ./git.nix
    ./helix
    ./neovim
    ./tmux
    ./zellij
    ./zsh.nix
    ./bat.nix
    ./develop
  ];

  home.packages = with pkgs; [
    killall
    bottom
    duf
    dust
    fd
    fzf
    go-task
    lsd
    ripgrep
    hyperfine
  ];

}
