{
  pkgs,
  inputs,
  username,
  ...
}:
{
  home.homeDirectory = "/home/${username}";

  xsession.enable = true;

  targets.genericLinux.nixGL = {
    packages = inputs.nixgl.packages.${pkgs.stdenv.hostPlatform.system};
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
