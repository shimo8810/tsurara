{ config, pkgs, lib, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should manage.
  home.username = "shimo";
  home.homeDirectory = "/home/shimo";

  # This value determines the Home Manager release that your configuration is compatible with.
  # This helps avoid breakage when a new Home Manager release introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager.
  # If you do want to update the value, then make sure to first check the Home Manager release notes.
  # Please read the comment before changing.
  home.stateVersion = "24.05";

  # The home.packages option allows you to install Nix packages into your environment.
  home.packages = with pkgs; [
    bottom
    duf
    dust
    fd
    fzf
    go-task
    hackgen-nf-font
    just
    lsd
    nixpkgs-fmt
    ripgrep
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage plain files is through 'home.file'.
  home.file = {
    # ".config/alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;
  };

  # Home Manager can also manage your environment variables through 'home.sessionVariables'.
  # These will be explicitly sourced when using a shell provided by Home Manager.
  # If you don't want to manage your shell through Home Manager then you have to manually source 'hm-session-vars.sh'
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # git configuration
  programs.git = {
    enable = true;
    userName = "shimo8810";
    userEmail = "shimo.8810@gmail.com";

    extraConfig = {
      core.editor = "nvim";
      init.defaultBranch = "main";
      color.ui = "auto";
    };
  };

  programs.bat = {
    enable = true;
    config.theme = "Nord";
  };

  imports = [
    ./alacritty
    ./neovim
    ./zsh
  ];

}
