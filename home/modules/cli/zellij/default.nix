{ pkgs, isWayland, ... }:
let
  copyCommand =
    if pkgs.stdenv.isDarwin then
      "pbcopy"
    else if isWayland then
      "wl-copy"
    else
      "xclip -selection clipboard";
in
{
  programs.zellij = {
    enable = true;

    settings = {
      theme = "tokyo-night-storm";
      show_startup_tips = false;
      default_layout = "compact";
      pane_frames = false;
      copy_command = copyCommand;
    };
  };
}
