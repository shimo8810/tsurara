inputs:
let
  Systems = [
    "aarch64-linux"
    "x86_64-linux"
    "aarch64-darwin"
    "x86_64-darwin"
  ];
in
inputs.nixpkgs.lib.genAttrs Systems (
  system:
  let
    pkgs = import inputs.nixpkgs { inherit system; };
  in
  {
    default = pkgs.mkShell {
      name = "tsurara";
      packages = with pkgs; [
        nixfmt-rfc-style
        nixd
      ];

      shellHook = ''
        exec zsh
      '';
    };
  }
)
