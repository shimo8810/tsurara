{ config, pkgs, ... }:
{
  programs.zed-editor = {
    enable = true;
    extensions = [ ];
    extraPackages = [ ];
  };
}
