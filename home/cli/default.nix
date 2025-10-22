{ pkgs, ... }:

{
  imports = [
    ./bat.nix
    ./bat.nix
    ./develop
    ./gemini.nix
    ./git.nix
    ./helix
    ./jq.nix
    ./neovim
    ./tmux
    ./yazi.nix
    ./zellij
    ./zoxide.nix
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
    ffmpeg
    gemini-cli
    gh
    poppler
    resvg
    yt-dlp
    xclip
    github-copilot-cli
  ];

}
