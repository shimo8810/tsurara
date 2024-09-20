{ username, ... }:
{
  home.homeDirectory = "/home/${username}";

  imports = [
    ../../home/cli
    ../../home/desktop
    ../../home/desktop/hyprland
    ../../home/gui
  ];
}
