#!/bin/bash

main() {
echo 'Running processes:'
echo "$(ps -e | wc -l)"
}

main
