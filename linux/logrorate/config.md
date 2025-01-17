***config***
```sh
1) sudo nano /etc/logrotate.d/clear_mem_cache
/var/log/clear_mem_cache.log {
    weekly                   # Rotate logs weekly
    rotate 4                 # Keep logs for 4 weeks
    compress                 # Compress rotated logs
    delaycompress            # Delay compression for one rotation cycle
    missingok                # Ignore errors if log is missing
    notifempty               # Do not rotate if log is empty
    create 640 root root     # Set permissions for new log file
    maxsize 50M              # Limit log size to 50MB per file
}
```
***Checks***
```sh
1) sudo logrotate -d /etc/logrotate.d/clear_mem_cache
2) sudo logrotate -f /etc/logrotate.d/clear_mem_cache **force it**
3) ls -lh /var/log/clear_mem_cache.log* **should see entry**
```
