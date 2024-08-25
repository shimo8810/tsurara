{
  description = "dotfiles and nixos configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    xremap-flake.url = "github:xremap/nix-flake";
    vscode-server.url = "github:nix-community/nixos-vscode-server";
    # hyprland.url = "github:hyprwm/Hyprland";
    deploy-rs = {
      url = "github:serokell/deploy-rs";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.utils.follows = "flake-utils";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, xremap-flake, vscode-server, deploy-rs, ... }:
    let
      system = "x86_64-linux";
      host = "pipkrake";
      username = "shimo";
    in
    {
      nixosConfigurations.${host} = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
        specialArgs = {
          inherit inputs;
        };
      };

      # deploy.nodes.${host} = {
      #   hostname = host;
      #   profiles.system = {
      #     path = deploy-rs.lib.${system}.activate.nixos self.nixosConfigurations.${host};
      #   };
      # };

      homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
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
