_default:
    @just --list

# Build and activate configuration
switch name:
    home-manager switch --flake .#{{name}}
