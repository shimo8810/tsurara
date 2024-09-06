{ pkgs, ... }:

{
  imports = [
    ./git
    ./helix
    ./neovim
    ./sheldon
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
    lsd
    nixd
    nixfmt-rfc-style
    nixpkgs-fmt
    ripgrep
    hyperfine
    python312
    deno
    gcc
    go
    # clang
    nixfmt-rfc-style
    (fenix.combine [
      fenix.stable.toolchain
      fenix.targets.wasm32-unknown-unknown.stable.rust-std
      fenix.targets.wasm32-wasi.stable.rust-std
    ])
  ];

  programs.bat = {
    enable = true;
    config.theme = "Nord";
  };
}
