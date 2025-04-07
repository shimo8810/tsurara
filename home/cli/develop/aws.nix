{ pkgs, ... }:
{
  programs.awscli = {
    enable = true;
  };

  home.packages = with pkgs; [
    aws-sam-cli
  ];
}
