{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    postman
  ];

  imports = [
    ./alacritty
    ./browser.nix
    ./cad.nix
    ./editor.nix
    ./ghostty
    ./obsidian.nix
    ./zed
  ];
}
