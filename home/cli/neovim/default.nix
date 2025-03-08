{ pkgs, lib, ... }:
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    # defaultEditor = true;
    extraLuaConfig = lib.fileContents ./init.lua;
    plugins = with pkgs.vimPlugins; [
      lualine-nvim
      nord-nvim
      nvim-tree-lua
      vim-nix
    ];
  };
}
