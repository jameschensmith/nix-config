_default:
    @just --list

# Build and activate home configuration
switch-home name="":
    home-manager switch --flake .{{name}}

# Build and activate system configuration
switch-host:
    nix build ".#darwinConfigurations.$(scutil --get LocalHostName).system"
    ./result/sw/bin/darwin-rebuild switch --flake .
