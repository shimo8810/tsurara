{ pkgs, ... }: {
  programs.helix = {
    enable = true;
  };

  # home.file = {
  #   ".config/zellij/config.kdl".source = ./config.kdl;
  # };
}
