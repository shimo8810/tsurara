{ username, ... }:
{
  home.homeDirectory = "/home/${username}";
  
  imports = [
    ../../home/cli
    ../../home/desktop
    # ../../home/gui
  ];
}
