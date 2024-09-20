{ pkgs, ... }:
{

  home.packages = with pkgs; [
    wofi
  ];


  wayland.windowManager.hyprland.enable = true;
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

  programs.waybar = {
    enable = true;
    systemd.enable = true;
  };

  programs.wofi = {
    enable = true;
  };
  home.file.".config/wofi/style.css".text = ''
    window {
      font-family: "Noto Sans CJK JP";
      font-weight: bold;
      margin: 0px;
      border-radius: 10px;
      background-color: rgba(27, 30, 43, 0.9);
    }

    #input {
      all: unset;
      padding: 2px;
      border-radius: 6px;
      margin: 5px;
      border: none;
      color: #c8d3f5;
      background-color: rgba(200, 211, 245, 0.2);
    }

    #inner-box {
      margin: 5px;
      border: none;
      background-color: transparent;
    }

    #outer-box {
      margin: 5px;
      border: none;
      background-color: transparent;
    }

    #scroll {
      margin: 0px;
      border: none;
    }

    #text {
      margin: 5px;
      border: none;
      color: #c8d3f5;
    }

    #entry {
      border: none;
    }

    #entry:focus {
      border: none;
    }

    #entry:selected {
      background-color: rgba(200, 211, 245, 0.2);
      border-radius: 5px;
      border: none;
    }
  '';
}
