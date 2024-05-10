{ pkgs, ... }: {
    imports = [ ./shared.nix ];
    home.username = "james";
    home.homeDirectory = "/Users/james";
    home.packages = with pkgs; [
        atuin
        go
        jujutsu
    ];
}
