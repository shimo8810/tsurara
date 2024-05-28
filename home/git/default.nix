{ pkgs, ... }: {
  # git configuration
  programs.git = {
    enable = true;
    userName = "shimo8810";
    userEmail = "shimo.8810@gmail.com";

    extraConfig = {
      core.editor = "nvim";
      init.defaultBranch = "main";
      color.ui = "auto";
    };
  };
}
