#!/bin/bash


DIR=$(dirname "$(readlink -f "$0")")
. "$HOME/.config/bdwmb/config.sh"


vecho() {
    [[ "$1" ]] && local p="[INFO] $1"
    echo "$p"
}

print_help() {
    echo '-q    - quiet, run without info/debug info'
    echo '-h    - print help'
}


main() {
    case "$1" in
        -q)
            vecho() { printf ''; }
            ;;
        -h)
            print_help
            exit 0
            ;;
        -*)
            vecho "Switch \"$1\" not found"
            exit 1
            ;;
    esac

    local module
    local bar_text

    for module in "${MODULES[@]}"; do
        . "$DIR/bdwmb_modules/$module" 2>/dev/null || . "$HOME/.config/bdwmb/modules/$module"
        vecho "Loading: $module (b$module)"
        bar_text+="$("b$module")"
    done
    vecho

    xsetroot -name "$bar_text"
}


while true; do
    main "$@"
    [[ "$DELAY" ]] && sleep "$DELAY"
done

