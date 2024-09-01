{
  description = "dotfiles and nixos configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixgl.url = "github:nix-community/nixGL";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, nixgl, ... }:
    let
      system = "x86_64-linux";
      host = "pipkrake";
      username = "shimo";
    in
    {
      homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [ nixgl.overlay ];
        };
        extraSpecialArgs = {
          inherit inputs;
        };
        modules = [
          ./home/linux.nix
        ];
      };
    };
}
