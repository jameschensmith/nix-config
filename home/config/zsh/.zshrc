# Documentation: https://zsh.org

# Source additional POSIX shell scripts.
for file in "$XDG_CONFIG_HOME"/sh/*.sh; do
    source "$file";
done

# Create required directories.
mkdir -p "$XDG_STATE_HOME/zsh" "$XDG_CACHE_HOME/zsh"

# Configure history.
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=10000
export SAVEHIST=10000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

# Configure autocompletion.
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

if [ -x "$(command -v zoxide)" ]; then
    eval "$(zoxide init zsh)"
fi

git() {
    if [ "$1" = "checkout" ]; then
        echo "please use 'switch' or 'restore' instead of 'checkout'"
        return 1
    fi
    command git "$@"
}

export EDITOR="kak"
export PAGER="less -R"
export VISUAL="kak"
