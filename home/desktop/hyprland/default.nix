{ ... }:
{
  wayland.windowManager.hyprland.enable = true;

  imports = [
    ./dunst.nix
    ./hyprpaper.nix
    ./hyprland.nix
    ./waybar.nix
    ./wofi.nix
    ./settings.nix
  ];
}
