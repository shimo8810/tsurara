{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$term" = "alacritty";
    "$menu" = "wofi --show drun";

    general = {
      gaps_in = 3;
      gaps_out = 5;
      resize_on_border = true;
    };

    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        size = 3;
        passes = 1;
        xray = true;
        ignore_opacity = true;
        new_optimizations = true;
      };
    };
    animations = {
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windows, 1, 4, myBezier, slide"
        "layers, 1, 4, myBezier, fade"
        "border, 1, 5, default"
        "fade, 1, 5, default"
        "workspaces, 1, 6, default"
      ];
    };
    gestures = {
      workspace_swipe = true;
      workspace_swipe_fingers = 3;
    };
    bind =
      [
        "$mod, Q, exec, $term"
        "$mod, C, killactive"
        "$mod SHIFT, M, exit"
        "$mod, V, togglefloating"
        "$mod, R, exec, $menu"

        # move focus
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"

        # application
        "$mod, B, exec, brave"
        ", Print, exec, hyprshot -m output"
      ]
      ++ (
        # workspaces
        builtins.concatLists (
          builtins.genList (
            i:
            let
              ws = i + 1;
            in
            [
              "$mod, code:1${toString i}, workspace, ${toString ws}"
              "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
            ]
          ) 9
        )
      );
    bindm = [
      # move/resize window
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
    env = [
      # "GTK_IM_MODULE, fcitx"
      "QT_IM_MODULE, fcitx"
      "XMODIFIERS, @im=fcitx"
    ];
    exec-once = [
      "fcitx5 -D"
    ];
  };
}
