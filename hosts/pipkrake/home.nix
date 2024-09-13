{ username, ... }:
{
  homeDirectory = "/home/${username}";

  imports = [
    ../../home/cli
    ../../home/desktop
    ../../home/desktop/wayland.nix
    ../../home/gui
  ];
}
