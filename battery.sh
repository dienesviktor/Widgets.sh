#!/bin/bash
# sudo apt install upower

main() {
    echo 'Battery:'
    upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage"
}

main
