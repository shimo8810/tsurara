{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (fenix.combine [
      fenix.stable.toolchain
      fenix.targets.wasm32-unknown-unknown.stable.rust-std
      fenix.targets.wasm32-wasi.stable.rust-std
    ])
  ];
}
