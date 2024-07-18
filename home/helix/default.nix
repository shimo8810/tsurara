{ pkgs, ... }: {
  programs.helix = {
    enable = true;

    settings = {
      theme = "nord-night";
      editor = {
        true-color = true;
        cursorline = true;
        color-modes = true;
        auto-completion = true;
        auto-save = true;
      };

      editor.whitespace.render = {
        space = "all";
        tab = "all";
        newline = "all";
      };

      editor.indent-guides = {
        render = true;
        character = "･";
      };
    };
  };


}
