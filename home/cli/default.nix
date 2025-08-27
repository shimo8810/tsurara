{ pkgs, ... }:

{
  imports = [
    ./bat.nix
    ./bat.nix
    ./develop
    ./gemini.nix
    ./git.nix
    ./helix
    ./neovim
    ./tmux
    ./zellij
    ./zsh
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
