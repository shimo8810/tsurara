{
  pkgs,
  inputs,
  username,
  ...
}:
{
  home.homeDirectory = "/home/${username}";

  xsession.enable = true;

  nixGL = {
    packages = inputs.nixgl.packages;
    defaultWrapper = "nvidia";
    installScripts = [
      "nvidia"
    ];
  };
  home.packages = [
    pkgs.diagram-as-code
  ];

  imports = [
    ../../home/cli
    ../../home/desktop
    ../../home/gui
  ];
}
