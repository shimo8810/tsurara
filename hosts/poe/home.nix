{ inputs, username, ... }:
let
  root = inputs.self.outPath;
in
{
  home.homeDirectory = "/home/${username}";

  imports = [
    (root + "/home/modules/apps")
    (root + "/home/modules/cli")
    (root + "/home/modules/dev")
  ];
}
