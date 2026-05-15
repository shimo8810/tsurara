{ config, pkgs, ... }:
{

  programs.alacritty = {
    enable = true;

    theme = "tokyo_night";

    settings = {
      window = {
        opacity = 0.85;
        blur = false;
      };

      font = {
        size = 14;
        normal = {
          family = "HackGen Console NF";
          style = "Regular";
        };
      };

      colors = {
        primary = {
          background = "#0A0C0F";
          foreground = "#D8DEE9";
        };
      };

      cursor.style = {
        shape = "Beam";
        blinking = "Always";
      };

      keyboard.bindings = [
        {
          key = "F11";
          action = "ToggleFullscreen";
        }
      ];

    };
  };
}
