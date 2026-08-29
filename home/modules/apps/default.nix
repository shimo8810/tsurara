{ pkgs, ... }:
{

  home.packages = with pkgs; [
    freecad
    gimp
    kicad
    librecad
    ngspice
    vlc
  ];

  imports = [
    ./alacritty.nix
    ./firefox.nix
    ./ghostty.nix
    ./obsidian.nix
    ./zed.nix
  ];
}
