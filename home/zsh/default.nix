{ pkgs, ... }: {
  # zsh configuration
  programs.zsh = {
    zprof.enable = true;
    enable = true;
    shellAliases = {
      ls = "lsd";
      cat = "bat";
      grep = "rg";
    };
    dotDir = ".config/zsh";

    history.size = 100000;
    initExtra = ''
      autoload -U promptinit; promptinit
      zstyle :prompt:pure:git:stash show yes
      zstyle ':completion:*' menu select
      eval "$(sheldon source)"
    '';
  };
}
