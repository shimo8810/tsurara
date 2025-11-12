{ config, pkgs, ... }:
{
  programs.obsidian = {
    enable = true;
    # package = config.lib.nixGL.wrap pkgs.obsidian;
  };
}
