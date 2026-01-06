{ username, ... }:
let
  root = inputs.self.outPath;
in
{
  home.homeDirectory = "/home/${username}";

  imports = [
    (root + "/home/modules/apps")
    (root + "/home/modules/cli")
    (root + "/home/modules/dev")
    (root + "/home/modules/wm/hyprland")
    (root + "/home/modules/fonts.nix")
  ];
}
