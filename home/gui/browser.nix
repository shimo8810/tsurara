{ config, pkgs, ... }:
{

  programs.chromium = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.chromium;
    extensions = [ ];
  };

  programs.firefox = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.firefox;
  };

  home.packages = [
    (config.lib.nixGL.wrap pkgs.google-chrome)
  ];

}
