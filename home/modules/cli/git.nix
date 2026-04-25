{ ... }:
{
  # git configuration
  programs.git = {
    enable = true;

    signing = {
      format = "ssh";
      key = "~/.ssh/id_ed25519.pub";
      signByDefault = true;
    };

    settings = {
      user = {
        name = "shimo8810";
        email = "shimo.8810@gmail.com";
      };

      color.ui = "auto";
      core.editor = "nvim";
      init.defaultBranch = "main";

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
