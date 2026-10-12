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
        version = "595.99.02";
        sha256 = "sha256-6HR3lYv3YwcFSTJL1a1slI66btIQ5EAFs+/4SUD24ew=";
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
