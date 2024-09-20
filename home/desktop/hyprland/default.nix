{ ... }:
{
  wayland.windowManager.hyprland.enable = true;

  imports = [
    ./dunst.nix
    ./hyprpaper
    ./hyprland.nix
    ./waybar.nix
    ./wofi.nix
  ];
}
