{ pkgs, ... }:
{
  home.packages = with pkgs; [
    uv
    python312
  ];
}
