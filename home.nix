{ pkgs, ... }: {
    home.stateVersion = "23.11";
    home.packages = with pkgs; [
        git
        just
        kakoune
        neovim
    ];
    programs.home-manager.enable = true;
    xdg.configFile."git/config".source = ./config/git/config;
}
