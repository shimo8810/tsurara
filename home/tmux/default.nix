{ pkgs, lib, ... }: {
  programs.tmux = {
    enable = true;
    clock24 = true;
    escapeTime = 0;
    historyLimit = 5000;
    mouse = true;
    keyMode = "vi";
    prefix = "C-a";
    disableConfirmationPrompt = true;
    terminal = "screen-256color";
    tmuxinator.enable = true;
    plugins = with pkgs; [
      {
        plugin = tmuxPlugins.nord;
        extraConfig = "set -g @plugin 'nordtheme/tmux'";
      }
    ];
    extraConfig = lib.fileContents ./tmux.conf;
  };
}
