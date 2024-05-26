# dotfiles

## install

### install nix

https://github.com/DeterminateSystems/nix-installer

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### install dotfiles

```sh
nix run nixpkgs#git -- clone git@github.com:shimo8810/tsurara.git ~/tsurara
nix run home-manager/master -- switch --flake ~/tsurara
```

## update

```sh
task switch
```
