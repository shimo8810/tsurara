{ pkgs, ... }:
{
  xdg.configFile."systemd/user/graphical-session.target.wants/app-com.mitchellh.ghostty.service".source =
    "${pkgs.ghostty}/share/systemd/user/app-com.mitchellh.ghostty.service";

  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
    settings = {
      theme = "TokyoNight";
      background = "#000000";
      background-opacity = 0.85;

      font-family = "HackGen Console NF";
      font-size = 14;

      cursor-style = "bar";
      cursor-style-blink = "true";

      copy-on-select = true;

      quit-after-last-window-closed = false;

      quick-terminal-position = "top";
      quick-terminal-animation-duration = 0;
      quick-terminal-size = "100%";

      keybind = [
        "ctrl+space=unbind"
        "ctrl+tab=unbind"
        "ctrl+shift+tab=unbind"
        "ctrl+shift+t=unbind"
        "global:f12=toggle_quick_terminal"
      ];
    };
  };
}
