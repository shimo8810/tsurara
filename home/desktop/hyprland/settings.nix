{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$term" = "alacritty";

    bind =
      [
        "$mod, B, exec, brave"
        ", Print, exec, grimblast copy area"
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
      "GTK_IM_MODULE, fcitx"
      "QT_IM_MODULE, fcitx"
      "XMODIFIERS, @im=fcitx"
    ];
    exec-once = [
      "fcitx5 -D"
    ];
  };
}
