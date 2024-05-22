# dotfiles

## install

### install nix

https://github.com/DeterminateSystems/nix-installer

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### install dotfiles

```sh
git clone git@github.com:shimo8810/dotfiles.git ~/.dotfiles
nix run home-manager/master -- switch --flake ~/.dotfiles
```

## update

```sh
task switch
```
