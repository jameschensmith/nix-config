_default:
    @just --list

# Build and activate configuration
switch:
    home-manager switch --flake .
