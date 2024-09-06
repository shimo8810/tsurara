inputs:
let
  username = "shimo";

  mkHomeManagerConfiguration =
    {
      system,
      overlays,
      modules,
    }:
    inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = import inputs.nixpkgs {
        inherit system overlays;
        config.allowUnfree = true;
      };
      extraSpecialArgs = {
        inherit inputs;
      };
      modules = modules ++ [
        {
          home = {
            inherit username;
            homeDirectory = "/home/${username}";
            stateVersion = "24.05";
          };
          programs.home-manager.enable = true;
        }
      ];
    };
in
{
  home-manager = {
    "${username}@hemingway" = mkHomeManagerConfiguration {
      system = "x86_64-linux";

      overlays = [ inputs.fenix.overlays.default ];
      modules = [ ./hemingway/home.nix ];
    };
  };
}
