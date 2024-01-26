{ pkgs, ... }: {
    home.username = "james.chen-smith";
    home.homeDirectory = "/Users/james.chen-smith";
    home.stateVersion = "23.11";
    home.packages = with pkgs; [
        just
        neovim
    ];
    programs.home-manager.enable = true;
}
