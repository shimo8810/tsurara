{ pkgs, ... }:
{

  home.packages = with pkgs; [
    freecad
    gimp
    kicad
    librecad
    # postman
    vlc
  ];

  imports = [
    ./alacritty.nix
    ./firefox.nix
    ./ghostty.nix
    ./obsidian.nix
    ./zed.nix
  ];
}
