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
        fzf
        ghq
        git
        jujutsu
        just
        kakoune
        kakoune-lsp
        less
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
    xdg.configFile."jj/config.d" = {
        source = ./config/jj/config.d;
        recursive = true;
    };
}
