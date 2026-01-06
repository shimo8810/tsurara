{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    freecad
    kicad
    librecad
  ];
}
