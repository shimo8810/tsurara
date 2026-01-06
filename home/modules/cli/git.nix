{ ... }:
{
  # git configuration
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "shimo8810";
        email = "shimo.8810@gmail.com";
        signingKey = "C1D2264169F90618";
      };

      color.ui = "auto";
      core.editor = "nvim";
      init.defaultBranch = "main";
      commit.gpgSign = true;

    };

    lfs = {
      enable = true;
      skipSmudge = true;
    };

  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;

    options = {
      line-numbers = true;
      side-by-side = true;
      dark = true;
      syntax-theme = "Nord";
      keep-plus-minus-markers = true;
    };
  };
}
