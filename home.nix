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
    lsd
    ripgrep
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage plain files is through 'home.file'.
  home.file = {
    ".config/alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;
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

  # neovim configuration
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
    extraLuaConfig = lib.fileContents ./nvim/init.lua;
    plugins = with pkgs.vimPlugins; [
      lualine-nvim
      nord-nvim
      nvim-tree-lua
      vim-nix
    ];
  };

  # zsh configuration
  programs.zsh = {
    enable = true;
    # enableCompletion = true;
    # autosuggestion.enable = true;
    # syntaxHighlighting.enable = true;
    shellAliases = {
      ls = "lsd";
      cat = "bat";
      grep = "rg";
    };
    dotDir = ".config/zsh";
    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        {
          name = "zsh-users/zsh-syntax-highlighting";
          tags = [ "defer:2" ];
         }
        { name = "zsh-users/zsh-completions"; }
        {
          name = "mafredri/zsh-async";
          tags = [ "from:github" ];
        }
        {
          name = "sindresorhus/pure";
          tags = [ "use:pure.zsh" "from:github" "as:theme" ];
        }
      ];
    };
    history.size = 100000;
    initExtra = ''
      autoload -U promptinit; promptinit
      zstyle :prompt:pure:git:stash show yes
      zstyle ':completion:*' menu select
    '';
  };

  programs.alacritty = {
    enable = true;
  };

  programs.bat = {
    enable = true;
    config.theme = "Nord";
  };
}
