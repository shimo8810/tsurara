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
        version = "595.71.05";
        sha256 = "sha256-NiA7iWC35JyKQva6H1hjzeNKBek9KyS3mK8G3YRva4I=";
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
