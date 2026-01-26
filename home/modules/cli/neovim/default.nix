{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = false;
    initLua = builtins.readFile ./init.lua;

    plugins = with pkgs.vimPlugins; [
      lualine-nvim
      nord-nvim
      nvim-tree-lua
      vim-nix
    ];
  };
}
