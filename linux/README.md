## ***Systemd Commands***

| Command                                            | Description                                               |
| -------------------------------------------------- | --------------------------------------------------------- |
|                    `systemctl isolate multi-user.target`              | Switch to multi-user mode temporarily                     |
| `systemctl set-default multi-user.target`          | Set multi-user mode as the default boot target            |
| `systemctl start <service_name>`                   | Start a service                                           |
| `systemctl stop <service_name>`                    | Stop a service                                            |
| `systemctl enable <service_name>`                  | Enable a service to start on boot                         |
| `systemctl disable <service_name>`                 | Disable a service from starting on boot                   |
| `systemctl restart <service_name>`                 | Restart a running service                                 |
| `systemctl reload <service_name>`                  | Reload service configuration without restarting           |
| `systemctl status <service_name>`                  | Show the status of a service                              |
| `systemctl daemon-reload`                          | Reload systemd manager configuration                      |
| `systemctl list-units --type=service`              | List all active services                                  |
| `systemctl show <service_name>`                    | Show detailed properties of a service                     |
| `journalctl -xe`                                   | Show logs for systemd services                            |
| `systemctl mask <service_name>`                    | Prevent a service from starting                           |
| `systemctl unmask <service_name>`                  | Unmask a previously masked service                        |
| `systemctl reboot`                                 | Reboot the system                                         |
| `systemctl poweroff`                               | Power off the system                                      |
| `systemctl suspend`                                | Suspend the system (put it into sleep mode)               |
| `systemctl hibernate`                              | Hibernate the system                                      |
| `systemctl default`                                | Switch to the default target (usually graphical.target)   |
| `systemctl isolate rescue.target`                  | Switch the system to single-user rescue mode              |
| `systemctl cat <service_name>`                     | Display the content of a service unit file                |
| `systemctl reset-failed`                           | Reset the "failed" state of all units                     |
| `systemctl disable --now <service_name>`           | Disable and stop a service immediately                    |


