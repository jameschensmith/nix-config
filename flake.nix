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

        homeConfigurations."james.chen-smith" = lib.homeManagerConfiguration {
            inherit pkgs;
            modules = [{
                home.username = "james.chen-smith";
                home.homeDirectory = "/Users/james.chen-smith";
                home.stateVersion = "23.11";
                home.packages = with pkgs; [
                    just
                    neovim
                ];
                programs.home-manager.enable = true;
            }];
        };
    };
}
