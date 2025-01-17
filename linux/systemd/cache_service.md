***Service***
```sh
1) nano /etc/systemd/system/clear_mem_cache.service

[Unit]
Description=Run mem-cache script
Documentation=https://man7.org/linux/man-pages/man5/proc.5.html
Wants=clear_mem_cache.timer

[Service]
Type=oneshot
ExecStart=/scripts/clear_mem_cache.sh
```
***Timer***
```sh
2) nano /etc/systemd/system/clear_mem_cache.timer

[Unit]
Description=Run clear_mem_cache.service periodically

[Timer]
OnCalendar=weekly
Persistent=true
AccuracySec=1min

[Install]
WantedBy=timers.target
```
***Start***
```sh
1) sudo systemctl daemon-reload
2) sudo systemctl enable clear_mem_cache.timer
3) sudo systemctl start clear_mem_cache.timer
```
***Checks***
```sh
1) systemctl list-timers --all | grep clear_mem_cache
2) sudo systemctl start clear_mem_cache.service
3) cat /var/log/syslog | grep clear_mem_cache **if logs are setup**
```
