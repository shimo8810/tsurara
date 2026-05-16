{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd # nix LSP server
    nixfmt # nix formatter
    nvd # nix version diff
    # nixfmt-tree
  ];
}
