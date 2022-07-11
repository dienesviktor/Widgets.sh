#!/bin/bash

main() {
    echo 'CPU:'
    echo $(grep -m 1 'model name' /proc/cpuinfo)
    echo $(grep -m 1 'cpu cores' /proc/cpuinfo)
    echo $(grep -m 1 'cpu MHz' /proc/cpuinfo)
}

main
