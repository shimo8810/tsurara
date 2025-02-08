{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nordic
    candy-icons
    tela-circle-icon-theme
    orchis-theme
    graphite-gtk-theme
    tokyonight-gtk-theme
    zafiro-icons
    # nordzy-icon-theme
    # nordzy-cursor-theme
    vimix-cursors
    hackgen-nf-font
    capitaine-cursors-themed
  ];
}
