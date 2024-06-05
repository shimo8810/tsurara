{ ... }: {

  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.85;
        blur = false;
      };


      font = {
        size = 16;
        normal = {
          family = "HackGen35 Console NF";
          style = "Regular";
        };
      };

      colors = {
        primary = {
          background = "#0A0C0F";
          foreground = "#D8DEE9";
        };

        normal = {
          black = "#3B4252";
          red = "#BF616A";
          green = "#A3BE8C";
          yellow = "#EBCB8B";
          blue = "#81A1C1";
          magenta = "#B48EAD";
          cyan = "#88C0D0";
          white = "#E5E9F0";
        };

        bright = {
          black = "#4C566A";
          red = "#BF616A";
          green = "#A3BE8C";
          yellow = "#EBCB8B";
          blue = "#81A1C1";
          magenta = "#B48EAD";
          cyan = "#8FBCBB";
          white = "#ECEFF4";
        };
      };

      cursor.style = {
        shape = "Beam";
        blinking = "Always";
      };

      keyboard.bindings = [
        { key = "F11"; action = "ToggleFullscreen"; }
      ];

    };
  };
}
