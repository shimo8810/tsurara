{ ... }:
{
  # zsh configuration
  programs.zsh = {
    # zprof.enable = true;
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "lsd";
      cat = "bat";
      grep = "rg";
    };
    dotDir = ".config/zsh";

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
