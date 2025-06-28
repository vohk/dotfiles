if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting
set -gx EDITOR hx

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

test -f /usr/share/bazzite-cli/bling.fish && source /usr/share/bazzite-cli/bling.fish
