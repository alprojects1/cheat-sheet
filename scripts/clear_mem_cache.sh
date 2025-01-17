#!/bin/bash
echo "$(date): Clearing cache..." >> /var/log/drop_caches.log
sync
echo 3 > /proc/sys/vm/drop_caches
echo "$(date): Cache cleared. Free memory: $(free -h | grep Mem | awk '{print $4}')" >> /var/log/drop_caches.log
