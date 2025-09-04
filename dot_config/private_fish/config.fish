if status is-interactive
    # Commands to run in interactive sessions can go here

    # fish
    atuin init fish | source
    bind up _atuin_bind_up

    # zellij
    set ZELLIJ_AUTO_EXIT true
    eval (zellij setup --generate-auto-start fish | string collect)

    # mise
    mise activate fish | source
end
