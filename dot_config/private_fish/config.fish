if status is-interactive
    # Commands to run in interactive sessions can go here

    # fzf
    #fzf --fish | source

    # atuin
    atuin init fish | source
    bind up _atuin_bind_up
    
    if test "$TERM_PROGRAM" = "ghostty"
    # zellij
        set ZELLIJ_AUTO_EXIT true
        eval (zellij setup --generate-auto-start fish | string collect)
    end

    # mise
    mise activate fish | source

    # zoxide
    zoxide init fish | source
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
