{ config, pkgs, ... }:
{
  home.packages =
    with pkgs;
    [
      # brave
      # firefox
      # vscode
      # discord
      # slack
      # (config.lib.nixGL.wrap obsidian)
      # postman
      (writeShellScriptBin "postman-nosandbox" ''
        exec ${config.lib.nixGL.wrap postman}/bin/postman --no-sandbox "$@"
      '')

    ]
    ++ [
      (config.lib.nixGL.wrap postman)
    ];

  imports = [
    ./alacritty
    ./browser.nix
    ./cad.nix
    ./editor.nix
    ./ghostty
    ./obsidian.nix
    ./zed
  ];
}
