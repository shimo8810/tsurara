{ pkgs, lib, ... }: {
    programs.tmux = {
        enable = true;
        extraConfig = lib.fileContents ./tmux.conf;
    };
}