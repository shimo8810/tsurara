{ pkgs, ... }:
{
  home.packages = with pkgs; [
    brave
    firefox
    vscode
    discord
    slack
  ];

  imports = [
    ./alacritty
    ./ghostty
  ];
}
