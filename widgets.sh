#!/bin/bash

main() {
if [ -z ${WIDGET_CONTROL+x} ];
  then
      ./mem.sh
      echo ""
      ./cpu.sh
  else
      mem="mem"
      cpu="cpu"
      proc="proc"
      user="user"
      disk="disk"
      battery="battery"
      if [[ "$WIDGET_CONTROL" == *"$mem"* ]]; then
          ./mem.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$cpu"* ]]; then
          ./cpu.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$proc"* ]]; then
          ./proc.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$user"* ]]; then
          ./user.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$disk"* ]]; then
          ./disk.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$battery"* ]]; then
          ./battery.sh
          echo ""
      fi
  fi
}

main
