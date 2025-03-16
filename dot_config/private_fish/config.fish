if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting
set -gx EDITOR hx

test -f /usr/share/bazzite-cli/bling.fish && source /usr/share/bazzite-cli/bling.fish
