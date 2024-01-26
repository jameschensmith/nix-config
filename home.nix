{ pkgs, ... }: {
    home.stateVersion = "23.11";
    home.packages = with pkgs; [
        just
        neovim
    ];
    programs.home-manager.enable = true;
}
