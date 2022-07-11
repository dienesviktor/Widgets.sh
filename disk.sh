#!/bin/bash

main() {
    echo "Disks:"
    df -h | awk '{print $1, $2, $3, $5}' | column -t
}

main
