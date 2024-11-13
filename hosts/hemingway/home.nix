{
  inputs,
  username,
  config,
  pkgs,
  lib,
  ...
}:
{
  home.homeDirectory = "/home/${username}";

  imports = [
    ../../home/cli
    ../../home/desktop
    # ../../home/gui
  ];
}
