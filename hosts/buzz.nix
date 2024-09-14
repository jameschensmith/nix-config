{ pkgs, ... }: {
    nix = {
        useDaemon = true;
        extraOptions = ''
            experimental-features = nix-command flakes
        '';
    };

    fonts.packages = [
        pkgs._0xproto
    ];

    nixpkgs.hostPlatform = "aarch64-darwin";

    system.stateVersion = 5;
}
