{ ... }:
let
  in
{
  programs.zellij = {
    enable = true;

    settings = {
      theme = "tokyo-night-storm";
      show_startup_tips = false;
      default_layout = "compact";
      pane_frames = false;
      copy_command = "xclip -selection clipboard";
    };
  };
}
