{ pkgs, ... }: {
    imports = [ ./shared.nix ];
    home.username = "jameschensmith";
    home.homeDirectory = "/Users/jameschensmith";
    home.packages = with pkgs; [
        atuin
    ];
}
