{ pkgs, inputs, ... }:

{
  home.username = "shimo";
  home.homeDirectory = "/home/shimo";

  home.stateVersion = "24.05";

  home.file = { };

  home.sessionVariables = { };

  programs.home-manager.enable = true;

  imports = [
    ../../home/cli
    ../../home/desktop
    ../../home/gui
  ];

}
