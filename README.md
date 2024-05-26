<h1 align="center">Tsurara</h1>
<div align="center">
  <img alt="nix" src="https://img.shields.io/badge/nix-5E81AC?style=for-the-badge&logo=nixos&logoColor=white">
  <img alt="mit" src="https://img.shields.io/github/license/shimo8810/tsurara?style=for-the-badge">
  <div>
  <img alt="logo" src="./assets/header_image.jpg" width="320">
  </div>
</div>

## install

### install nix

https://github.com/DeterminateSystems/nix-installer

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### install dotfiles

```sh
nix run 'nixpkgs#git' -- clone git@github.com:shimo8810/tsurara.git ~/tsurara
nix run home-manager/master -- switch --flake ~/tsurara
```

## update

```sh
task switch
```
