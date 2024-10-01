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
      path = "$ZDOTDIR/zsh_history";
    };

    initExtra = ''
      zstyle ':completion:*' menu select
    '';
  };

  programs.starship = {
    enable = true;
    settings = builtins.fromTOML ''
      format = """
      $username\
      $hostname\
      $directory\
      $git_branch\
      $git_state\
      $git_status\
      $cmd_duration\
      $line_break\
      $python\
      $nix_shell\
      $character"""

      [directory]
      read_only = " "
      style = "blue"

      [character]
      success_symbol = "[❯](purple)"
      error_symbol = "[❯](red)"
      vimcmd_symbol = "[❮](green)"

      [git_branch]
      format = "[$branch]($style)"
      style = "bright-black"

      [git_status]
      format = "[[(*$conflicted$untracked$modified$staged$renamed$deleted)](218) ($ahead_behind$stashed)]($style)"
      style = "cyan"
      conflicted = "​"
      untracked = "​"
      modified = "​"
      staged = "​"
      renamed = "​"
      deleted = "​"
      stashed = "≡"

      [git_state]
      format = '\([$state( $progress_current/$progress_total)]($style)\) '
      style = "bright-black"

      [cmd_duration]
      format = "[$duration]($style) "
      style = "yellow"

      [python]
      format = "[$virtualenv]($style) "
      style = "bright-black"

      [nix_shell]
      format = "[$name]($style) "
      style = "bright-black"

      [username]
      format = "[$user]($style)"
      style_user = "bright-cyan"

      [hostname]
      format = '@[$hostname]($style) '
      style = "blue"
    '';
  };
}
