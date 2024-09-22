{ pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 20;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "sway/window"
          "custom/hello-from-waybar"
        ];
        modules-right = [
          "mpd"
          "custom/mymodule#with-css-id"
          "temperature"
        ];
      };
    };
  };
}
