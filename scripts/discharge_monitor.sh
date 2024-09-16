#!/bin/bash
while true; do
  if [[ $(upower -i $(upower -e | grep 'BAT') | grep -c "state: discharging") -gt 0 ]]; then
    echo "$(date) - $(upower -i $(upower -e | grep 'BAT') | grep -E 'percentage|time to empty|energy-rate')" >> /scripts/discharge_log.txt
  fi
  sleep 300
done
