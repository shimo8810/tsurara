{ ... }:
{
  programs.yazi = {
    shellWrapperName = "y";
    enable = true;
    enableZshIntegration = true;
  };
}
