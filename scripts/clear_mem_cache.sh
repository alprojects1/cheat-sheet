#!/bin/bash
LOG_FILE="/var/log/clear_mem_cache.log"

# Ensure log file exists & has correct permissions
if [ ! -f "$LOG_FILE" ]; then
    sudo touch $LOG_FILE
    sudo chmod 640 $LOG_FILE
fi

# Log action with mem-status before & after 
echo "$(date '+%Y-%m-%d %H:%M:%S') - Clearing mem cache. Free mem before: $(free -h | grep Mem | awk '{print $4}')" >> $LOG_FILE
sync; echo 3 > /proc/sys/vm/drop_caches
echo "$(date '+%Y-%m-%d %H:%M:%S') - Mem cache cleared successfully. Free mem after: $(free -h | grep Mem | awk '{print $4}')" >> $LOG_FILE
