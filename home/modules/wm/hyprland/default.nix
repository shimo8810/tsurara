{ pkgs, ... }:
{
  wayland.windowManager.hyprland.enable = true;

  home.packages = with pkgs; [
    hyprshot
  ];

  imports = [
    ./dunst.nix
    ./hyprpaper.nix
    ./waybar.nix
    ./wofi.nix
    ./settings.nix
  ];
}
