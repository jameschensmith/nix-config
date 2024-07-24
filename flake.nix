{
    description = "James Chen-Smith's Nix configurations";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        nix-darwin = {
            url = "github:LnL7/nix-darwin";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, nix-darwin, home-manager }:
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

        darwinConfigurations = {
            buzz = nix-darwin.lib.darwinSystem {
                modules = [ ./hosts/buzz.nix ];
            };
        };

        homeConfigurations = {
            "james@buzz" = lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [ ./home/buzz.nix ];
            };
            "work" = lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [ ./home/work.nix ];
            };
        };
    };
}
