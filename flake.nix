{
  description = "dotfiles and nixos configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    xremap-flake.url = "github:xremap/nix-flake";
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
  };

  outputs = inputs@{ nixpkgs, home-manager, xremap-flake, hyprland, ... }:
    {
      nixosConfigurations."pipkrake" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          xremap-flake.nixosModules.default
          {
            services.xremap = {
              serviceMode = "system";
              config = {
                modmap = [
                  {
                    name = "capslock to control";
                    remap.CapsLock = "Ctrl_L";
                  }
                ];
              };
            };
          }
        ];
        specialArgs = {
          inherit inputs;
        };
      };

      homeConfigurations."home_x64" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          system = "x86_64-linux";
          config.allowUnfree = true;
        };
        extraSpecialArgs = {
          inherit inputs;
        };
        modules = [
          hyprland.homeManagerModules.default
          {
            wayland.windowManager.hyprland.enable = true;
          }
          ./home/linux.nix
        ];
      };
    };
}
