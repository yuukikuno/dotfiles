complete -c bt -f

complete -c bt -n "not __fish_seen_subcommand_from connect disconnect" \
    -a "connect disconnect"

complete -c bt -n "__fish_seen_subcommand_from connect disconnect" \
    -a "headphones speaker"
