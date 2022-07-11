#!/bin/bash

main() {
    echo $(free | awk '/Mem/ {print("Free memory: "), $3, "kb"}')
    echo $(free | awk '/Mem/ {print("Total memory: "), $2, "kb"}')
}

main
