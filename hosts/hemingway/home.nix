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

  xsession.enable = true;

  nixGL = {
    packages = inputs.nixgl.packages;
    # defaultWrapper = "nvidiaPrime";
    defaultWrapper = "nvidia";
    offloadWrapper = "nvidiaPrime";
    installScripts = [
      "nvidia"
      "nvidiaPrime"
    ];
  };


  imports = [
    ../../home/cli
    ../../home/desktop
    # ../../home/gui
  ];
}
