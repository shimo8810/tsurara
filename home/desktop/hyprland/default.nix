{ ... }:
{
  wayland.windowManager.hyprland.enable = true;

  imports = [
    ./dunst.nix
    ./hyprpaper.nix
    ./waybar.nix
    ./wofi.nix
    ./settings.nix
  ];
}
