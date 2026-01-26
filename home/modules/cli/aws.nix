{ pkgs, ... }:
{
  programs.awscli = {
    enable = true;
  };

  home.packages = with pkgs; [
    python313Packages.cfn-lint
    aws-cdk-cli
  ];
}
