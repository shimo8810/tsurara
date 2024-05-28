{ pkgs, ... }: {
  # zsh configuration
  programs.zsh = {
    enable = true;
    # enableCompletion = true;
    # autosuggestion.enable = true;
    # syntaxHighlighting.enable = true;
    shellAliases = {
      ls = "lsd";
      cat = "bat";
      grep = "rg";
    };
    dotDir = "~/.config/zsh";
    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        {
          name = "zsh-users/zsh-syntax-highlighting";
          tags = [ "defer:2" ];
        }
        { name = "zsh-users/zsh-completions"; }
        {
          name = "mafredri/zsh-async";
          tags = [ "from:github" ];
        }
        {
          name = "sindresorhus/pure";
          tags = [ "use:pure.zsh" "from:github" "as:theme" ];
        }
      ];
    };
    history.size = 100000;
    initExtra = ''
      autoload -U promptinit; promptinit
      zstyle :prompt:pure:git:stash show yes
      zstyle ':completion:*' menu select
    '';
  };
}
