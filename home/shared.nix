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

        bun
        ghq
        git
        just
        kakoune
        less
        neovim
        nushell
        ripgrep
        tmux
        yazi
        zoxide
        zsh
    ];
    programs.home-manager.enable = true;
    xdg.configFile."git/config".source = ./config/git/config;
    xdg.configFile."kak/kakrc".source = ./config/kak/kakrc;
    xdg.configFile."tmux/tmux.conf".source = ./config/tmux/tmux.conf;
    home.file.".zshenv".source = ./config/zsh/.zshenv;
    xdg.configFile."zsh/.zshrc".source = ./config/zsh/.zshrc;
}
