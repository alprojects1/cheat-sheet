#!/bin/bash
while true; do
  echo "$(date) - $(upower -i $(upower -e | grep 'BAT') | grep -E 'percentage|time to full|time to empty|energy-rate')" >> /scripts/battery_log.txt
  sleep 300
done
