{ pkgs, ... }:

{
  imports = [
    ./aws.nix
    ./bat.nix
    ./codex.nix
    ./gemini.nix
    ./git.nix
    ./helix.nix
    ./jq.nix
    ./neovim
    ./tmux
    ./yazi.nix
    ./zellij.nix
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
