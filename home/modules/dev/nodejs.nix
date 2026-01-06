{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # nodejs
    # yarn
    # volta
    fnm
    pnpm
  ];
}
