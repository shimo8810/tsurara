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
    ffmpeg
    fzf
    gemini-cli
    gh
    github-copilot-cli
    go-task
    hyperfine
    lsd
    monolith
    poppler
    resvg
    ripgrep
    todoist
    tree
    xclip
    yt-dlp
  ];

}
