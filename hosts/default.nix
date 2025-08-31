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
        config = {
          allowUnfree = true;
          allowUnfreePredicate = (_: true);
        };

      };
      extraSpecialArgs = {
        inherit inputs username;
      };
      modules = modules ++ [
        {
          home = {
            inherit username;
            stateVersion = "25.11";
          };
          programs.home-manager.enable = true;
        }
      ];
    };

in
{
  nixos = {
    montgomery = mkNixosSystem {
      system = "x86_64-linux";
      modules = [ ./montgomery/nixos.nix ];
    };
  };

  home = {
    "${username}@hemingway" = mkHomeManagerConfiguration {
      system = "x86_64-linux";
      overlays = [
        inputs.fenix.overlays.default
        (import ../overlays/awsdac.nix)
      ];
      modules = [ ./hemingway/home.nix ];
    };

    "${username}@montgomery" = mkHomeManagerConfiguration {
      system = "x86_64-linux";
      overlays = [ inputs.fenix.overlays.default ];
      modules = [ ./montgomery/home.nix ];
    };

    "${username}@hokusai" = mkHomeManagerConfiguration {
      system = "aarch64-darwin";
      overlays = [ inputs.fenix.overlays.default ];
      modules = [ ./hokusai/home.nix ];
    };
  };
}
