{ ... }:
{
  # zellij configuration
  programs.zellij = {
    enable = true;
    # enableZshIntegration = true;
    settings = {
      theme = "nord";
      show_startup_tips = false;
      default_layout = "compact";
      # copy_clipboard = "primary";
      copy_command = "xclip -selection clipboard";
    };
  };
}
