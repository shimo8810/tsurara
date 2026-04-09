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
    };
  };
}
