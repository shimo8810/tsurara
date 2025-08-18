{ ... }:
{
  # git configuration
  programs.git = {
    enable = true;
    userName = "shimo8810";
    userEmail = "shimo.8810@gmail.com";
    signing.key = "C1D2264169F90618";

    lfs = {
      enable = true;
      skipSmudge = true;
    };

      line-numbers = true;
      side-by-side = true;
      dark = true;
      syntax-theme = "Nord";
      keep-plus-minus-markers = true;
    };
    extraConfig = {
      core.editor = "nvim";
      init.defaultBranch = "main";
      color.ui = "auto";
      commit.gpgSign = true;
    };
  };
}
