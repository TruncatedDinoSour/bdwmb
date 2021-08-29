#!/bin/bash


DIR=$(dirname "$(readlink -f "$0")")
. "$HOME/.config/bdwmb/config.sh"


vecho() {
    echo "$@"
}


main() {
    [[ "$1" == "-q" ]] && vecho() { printf ''; }

    local module
    local bar_text

    for module in "${MODULES[@]}"; do
        . "$DIR/modules/$module" 2>/dev/null || . "$HOME/.config/bdwmb/modules/$module"
        vecho "Loading: $module (b$module)"
        bar_text+="$("b$module")"
    done
    vecho

    xsetroot -name "$bar_text"
}


while true; do
    main "$@"
    sleep "$DELAY"
done

