{
  pkgs,
  inputs,
  username,
  ...
}:
{
  home.homeDirectory = "/home/${username}";

  xsession.enable = true;

  targets.genericLinux = {
    enable = true;

    nixGL = {
      packages = inputs.nixgl.packages.${pkgs.stdenv.hostPlatform.system};
      defaultWrapper = "nvidia";
      installScripts = [
        "nvidia"
      ];
    };
  };

  imports = [
    ../../home/cli
    ../../home/desktop
    ../../home/gui
  ];
}
