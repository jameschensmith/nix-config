_default:
    @just --list

# Build and activate home configuration
switch-home name="":
    home-manager switch --flake .{{name}}
