{ pkgs, ... }: {
    home.stateVersion = "23.11";
    home.packages = with pkgs; [
        just
        kakoune
        neovim
    ];
    programs.home-manager.enable = true;
}
