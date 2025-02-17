{ config, pkgs, ... }:
{
  home.packages = [
    (config.lib.nixGL.wrap pkgs.freecad)
    (config.lib.nixGL.wrap pkgs.kicad)
  ];
}
