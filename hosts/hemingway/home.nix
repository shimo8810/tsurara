{
  pkgs,
  inputs,
  username,
  ...
}:
let
  root = inputs.self.outPath;
in
{
  home.homeDirectory = "/home/${username}";

  xsession.enable = true;

  targets.genericLinux = {
    enable = true;
    nixGL.packages = null;
    gpu = {
      enable = true;
      nvidia = {
        enable = true;
        version = "580.95.05";
        sha256 = "sha256-hJ7w746EK5gGss3p8RwTA9VPGpp2lGfk5dlhsv4Rgqc=";
      };
    };
  };

  imports = [
    (root + "/home/modules/apps")
    (root + "/home/modules/cli")
    (root + "/home/modules/dev")
    (root + "/home/modules/fonts.nix")
  ];
}
