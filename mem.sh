#!/bin/bash

main() {
    echo 'Memory:'
    echo $(free | awk '/Mem/ {print("Free memory: "), $4, "kb"}')
    echo $(free | awk '/Mem/ {print("Total memory: "), $2, "kb"}')
}

main
