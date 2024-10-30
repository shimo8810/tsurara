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
    bottom
    duf
    dust
    fd
    fzf
    go-task
    hyperfine
    killall
    lsd
    monolith
    ripgrep
    yt-dlp
  ];

}
