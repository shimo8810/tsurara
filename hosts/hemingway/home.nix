{
  inputs,
  username,
  ...
}:
{
  home.homeDirectory = "/home/${username}";

  xsession.enable = true;

  nixGL = {
    packages = inputs.nixgl.packages;
    defaultWrapper = "nvidia";
    installScripts = [
      "nvidia"
    ];
  };

  imports = [
    ../../home/cli
    ../../home/desktop
    ../../home/gui/alacritty
    ../../home/gui/ghostty
    ../../home/gui/cad.nix
    ../../home/gui/browser.nix
    ../../home/gui/editor.nix
  ];
}
