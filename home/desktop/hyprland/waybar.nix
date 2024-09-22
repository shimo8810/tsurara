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
        modules-center =
          [
        ];
        modules-right = [
          # "mpd"
          "idle_inhibitor"
          # "pulseaudio"
          "wireplumber"
          "network"
          # "power-profiles-daemon"
          # "cpu"
          # "memory"
          # "temperature"
          # "backlight"
          # "keyboard-state"
          # "sway/language"
          "battery"
          # "battery#bat2"
          "tray"
          "clock"
          # "custom/power"
        ];

        ];
      };
    };
  };
}
