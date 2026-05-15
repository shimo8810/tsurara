{ pkgs, config, lib, ... }:
{
  home.packages = with pkgs; [
    nixd # nix LSP server
    nixfmt # nix formatter
    nvd # nix version diff
    # nixfmt-tree
  ];

  home.activation.generateNixdConfig = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    flake_path="${config.home.homeDirectory}/tsurara"
    _hostname=$(uname -n | cut -d. -f1)
    if [ -d "$flake_path" ]; then
      cat > "$flake_path/.nixd.json" <<EOF
{
  "nixpkgs": {
    "expr": "import (builtins.getFlake \"$flake_path\").inputs.nixpkgs { }"
  },
  "options": {
    "home-manager": {
      "expr": "(builtins.getFlake \"$flake_path\").homeConfigurations.\"${config.home.username}@$_hostname\".options"
    }
  }
}
EOF
    fi
  '';
}
