{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$term" = "alacritty";

    general = {
      gaps_in = 3;
      gaps_out = 5;
      # resize_on_border = true;
    };
    gestures = {
      workspace_swipe = true;
      workspace_swipe_fingers = 3;
    };
    # gaps_in = 3;
    # gaps_out = 5;
    bind =
      [
        "$mod, B, exec, brave"
        ", Print, exec, hyprshot -m output"
        "$mod, Return, exec, alacritty"
        "$mod, A, exec, wofi --show drun -width 512px"
      ]
      ++ (
        # workspaces
        # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
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
