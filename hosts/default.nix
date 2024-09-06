inputs:
let
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
      inherit modules;
    };
in
{
  home-manager = {
    "shimo@hemingway" = mkHomeManagerConfiguration {
      system = "x86_64-linux";
      overlays = [ inputs.fenix.overlays.default ];
      modules = [ ./hemingway/home.nix ];
    };
  };
}
