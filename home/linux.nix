{ pkgs, inputs, ... }:

{
  home.username = "shimo";
  home.homeDirectory = "/home/shimo";

  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    bottom
    duf
    dust
    fd
    fzf
    go-task
    hackgen-nf-font
    hyperfine
    just
    lsd
    nixd
    nixpkgs-fmt
    ripgrep
    nordic
    candy-icons
    tela-circle-icon-theme
    orchis-theme
    graphite-gtk-theme
    tokyonight-gtk-theme
    zafiro-icons
    nordzy-icon-theme
    nordzy-cursor-theme
    vimix-cursors
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

  home.file = { };

  home.sessionVariables = { };

  programs.home-manager.enable = true;

  programs.bat = {
    enable = true;
    config.theme = "Nord";
  };

  imports = [
    ./git
    ./helix
    ./neovim
    ./sheldon
    ./tmux
    ./zellij
    ./zsh
  ];

}
