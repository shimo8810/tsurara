{ pkgs, ... }:

{
  imports = [
    ./bat.nix
    ./git.nix
    ./helix
    ./neovim
    ./tmux
    ./zellij
    ./zsh
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
    tree
    lsd
    monolith
    ripgrep
    yt-dlp
    gemini-cli
    gh
  ];

}
