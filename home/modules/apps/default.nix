{ pkgs, ... }:
{

  home.packages = with pkgs; [
    postman
    freecad
    kicad
    librecad
    gimp
  ];

  imports = [
    ./alacritty.nix
    ./firefox.nix
    ./cad.nix
    ./editor.nix
    ./ghostty.nix
    ./obsidian.nix
    ./zed.nix
  ];
}
