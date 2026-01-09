{ pkgs, ... }:

{
  imports = [
    ./aws.nix
    ./bat.nix
    ./gemini.nix
    ./git.nix
    ./helix.nix
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
    gh
    poppler
    resvg
    yt-dlp
    xclip
    github-copilot-cli
  ];

}
