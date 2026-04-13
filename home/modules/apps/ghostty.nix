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
      font-size = 16;

      cursor-style = "bar";
      cursor-style-blink = "true";

      copy-on-select = true;

      # fcitx5 が Ctrl+Space を受け取れるようにアンバインド
      keybind = "ctrl+space=unbind";
    };
  };
}
