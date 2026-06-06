{ pkgs, ... }:

{
  imports = [
    ./antigravity.nix
    ./aws.nix
    ./bat.nix
    ./claude_code.nix
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
    nvtopPackages.full
    poppler
    resvg
    ripgrep
    todoist
    tree
    wl-clipboard
    xclip
    yt-dlp
  ];

}
