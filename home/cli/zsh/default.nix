{ config, ... }:
{
  # zsh configuration
  programs.zsh = {
    # zprof.enable = true;
    enable = true;
    enableCompletion = true;
    autosuggestion = {
      enable = true;
      strategy = [
        "match_prev_cmd"
        "history"
      ];
    };
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "lsd";
      cat = "bat";
      grep = "rg";
      cd = "z";
    };
    dotDir = "${config.xdg.configHome}/zsh";

    history = {
      expireDuplicatesFirst = true;
      extended = true;
      size = 100000;
    };

    initContent = builtins.readFile ./init_content.zsh;
  };

  programs.starship = {
    enable = true;
    settings = builtins.fromTOML (builtins.readFile ./starship_settings.toml);
  };
}
