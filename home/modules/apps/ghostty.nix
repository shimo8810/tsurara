{ ... }:
{
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
