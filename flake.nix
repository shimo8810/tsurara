{
  description = "dotfiles and nixos configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      fenix,
      ...
    }:
    let
      system = "x86_64-linux";
      username = "shimo";
    in
    {
      homeConfigurations = (import ./hosts inputs).home-manager;
      #.${username} = home-manager.lib.homeManagerConfiguration {
      #   pkgs = import nixpkgs {
      #     inherit system;
      #     config.allowUnfree = true;
      #     overlays = [ fenix.overlays.default ];
      #   };
      #   extraSpecialArgs = {
      #     inherit inputs;
      #   };
      #   modules = [ ./home/linux.nix ];
      # };
    };
}
