{ pkgs, ... }:
{
  programs.awscli = {
    enable = true;
  };

  home.packages = with pkgs; [
    aws-sam-cli
    python312Packages.cfn-lint
    nodePackages_latest.aws-cdk
  ];
}
