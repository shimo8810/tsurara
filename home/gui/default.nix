{ config, pkgs, ... }:
{
  # home.packages = with pkgs; [
    # brave
    # firefox
    # vscode
    # discord
    # slack
    # (config.lib.nixGL.wrap obsidian)
  # ];

  imports = [
    ./alacritty
    ./browser.nix
    ./cad.nix
    ./editor.nix
    ./ghostty
  ];
}
