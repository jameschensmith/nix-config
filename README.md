# Nix Config

My personal [Nix](https://nixos.org) configurations.

## Usage

First, install Nix using the [Determinate Nix
Installer](https://github.com/DeterminateSystems/nix-installer):

```
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

Next, run `nix develop` in the current directory to get into the Nix shell.

### Build and Activate Configuration

```
home-manager switch --flake .
```

## Public Domain

In an effort to dedicate all of my work to the public domain, copyright and
related rights worldwide are waived through the [Blue Oak Model License
1.0.0](https://blueoakcouncil.org/license/1.0.0) for software and the [CC0 1.0
Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/) for all other
content. For the software, please ensure you comply with the terms of the
license.

See [COPYING](./COPYING) for details.
