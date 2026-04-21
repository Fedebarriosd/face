# Disable file completions for face
complete -c face -f

# Options
complete -c face -s l -l list   -d 'List all emojis'
complete -c face -s s -l search -d 'Search by name' -r
complete -c face -s h -l help   -d 'Show help'

# Emoji names — read dynamically from face -l
complete -c face \
    -n 'not __fish_seen_subcommand_from -l --list -s --search -h --help' \
    -a '(face -l | awk "{printf \"%s\\t%s\\n\", \$1, \$2}")'
