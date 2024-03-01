{
    description = "James Chen-Smith's Nix configurations";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager }:
    let
        lib = home-manager.lib;
        system = "aarch64-darwin";
        pkgs = import nixpkgs { inherit system; };
    in
    {
        devShells.${system}.default = pkgs.mkShell {
            packages = [
                pkgs.just
                pkgs.home-manager
            ];
        };

        homeConfigurations = {
            "jameschensmith@buzz" = lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [ ./home/personal.nix ];
            };
            "work" = lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [ ./home/work.nix ];
            };
        };
    };
}
