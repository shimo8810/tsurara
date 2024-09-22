{ ... }:
{
  # home.packages = with pkgs; [
  #   gcc
  # ];

  imports = [
    ./rust.nix
    ./deno.nix
    ./python.nix
    ./go.nix
    ./nix.nix
  ];
}
