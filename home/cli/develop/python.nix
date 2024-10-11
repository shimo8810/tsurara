{ pkgs, ... }:
{
  home.packages = with pkgs; [
    uv
    rye
    python312
  ];
}
