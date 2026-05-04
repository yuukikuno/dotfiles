set -g fish_greeting
if status is-interactive

    # Commands to run in interactive sessions can go here

    # fzf
    #fzf --fish | source

    # atuin
    atuin init fish | sed 's/-k up/up/' | source
    bind up _atuin_bind_up

    if test "$TERM_PROGRAM" = ghostty
        source "$GHOSTTY_RESOURCES_DIR"/shell-integration/fish/vendor_conf.d/ghostty-shell-integration.fish
    end

    # mise
    mise activate fish | source

    # zoxide
    zoxide init fish | source

    source ~/.bash_aliases

    starship init fish | source
end

/home/yuuki/.local/bin/mise activate fish | source

# pnpm
set -gx PNPM_HOME "/home/yuuki/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
