inputs:
let
  username = "shimo";

  mkNixosSystem =
    {
      system,
      modules,
    }:
    inputs.nixpkgs.lib.nixosSystem {
      inherit system modules;
      specialArgs = {
        inherit inputs;
      };
    };

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
  nixos = {
    pipkrake = mkNixosSystem {
      system = "x86_64-linux";
      modules = [ ./pipkrake/nixos.nix ];
    };
  };

  home = {
    "${username}@hemingway" = mkHomeManagerConfiguration {
      system = "x86_64-linux";

      overlays = [ inputs.fenix.overlays.default ];
      modules = [ ./hemingway/home.nix ];
    };

    "${username}@pipkrake" = mkHomeManagerConfiguration {
      system = "x86_64-linux";

      overlays = [ inputs.fenix.overlays.default ];
      modules = [ ./pipkrake/home.nix ];
    };

    "${username}@hokusai" = mkHomeManagerConfiguration {
      system = "aarch64-darwin";

      # overlays = [ inputs.fenix.overlays.default ];
      modules = [ ./hokusai/home.nix ];
    };
  };
}
