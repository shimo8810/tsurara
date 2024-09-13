{ pkgs, username, ... }:
{
  home.homeDirectory = "/Users/${username}";

  home.packages = with pkgs; [
    bottom
    duf
    dust
    fd
    fzf
  ];
}
