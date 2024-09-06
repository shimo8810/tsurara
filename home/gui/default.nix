{ pkgs, ... }:
{
  home.packages = with pkgs; [
    brave
    firefox
    vscode
  ];

  imports = [
    ./alacritty
  ];
}
