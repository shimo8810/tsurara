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
        version = "595.84";
        sha256 = "sha256-mcQE5SExvye8ptoCaNzOPr7cenOrF0BxqZXPGmxeugY=";
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
