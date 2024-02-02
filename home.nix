{ pkgs, ... }: {
    home.stateVersion = "23.11";
    home.packages = with pkgs; [
        coreutils-full
        findutils
        moreutils
        bc
        gawk
        gnugrep
        gnumake
        gnused
        gnutar
        gzip

        git
        just
        kakoune
        neovim
    ];
    programs.home-manager.enable = true;
    xdg.configFile."git/config".source = ./config/git/config;
}
