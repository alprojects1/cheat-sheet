## ***Network Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `nmcli con show`                             | Show all network connections                         |
| `nmcli con edit <interface>`                 | Edit a specific network connection                   |
| `nmcli> set ipv4.addresses <ip_address>`     | Set the IPv4 address                                 |
| `nmcli> set ipv4.gateway <gateway>`          | Set the default IPv4 gateway                         |
| `nmcli> set ipv4.dns <dns_servers>`          | Set the DNS servers                                  |
| `nmcli> save`                                | Save changes to the network configuration            |
| `nmcli> quit`                                | Exit nmcli interactive mode                          |
| `sudo nmcli connection up <interface>`       | Bring up the network connection                      |
| `nmcli con mod <interface> ipv4.addresses <ip>` | Modify the IP address persistently                |
| `nmcli con add con-name <name> ifname <interface> type ethernet ip4 <ip> gw4 <gateway>` | Add a new network connection with specified IP and gateway |
| `nmcli con mod <name> ipv4.dns "<dns1,dns2>"` | Modify the DNS servers for the connection           |
| `nmcli con mod <name> connection.autoconnect yes` | Set the connection to autoconnect on boot       |
| `nmcli con down <interface> && nmcli con up <name>` | Restart a connection with new settings        |
| `systemctl restart NetworkManager`           | Restart the NetworkManager service                   |
| `ip addr show <interface>`                   | Show IP address information for a specific interface |


## ***Firewalld***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `firewall-cmd --state`                       | Check the state of the firewall                      |
| `firewall-cmd --list-all`                    | List all current firewall rules                      |
| `firewall-cmd --add-port=<port>/tcp`         | Open a specific TCP port                             |
| `firewall-cmd --remove-port=<port>/tcp`      | Close a specific TCP port                            |
| `firewall-cmd --add-service=<service>`       | Allow a service through the firewall (e.g., HTTP, SSH) |
| `firewall-cmd --reload`                      | Reload the firewall rules                            |
| `firewall-cmd --add-masquerade`              | Enable masquerading for NAT                          |
| `firewall-cmd --zone=public --add-interface=<interface>` | Bind an interface to a specific firewall zone|
| `firewall-cmd --permanent --add-port=<port>/tcp` | Add a port permanently to the firewall rules       |
| `firewall-cmd --permanent --remove-port=<port>/tcp` | Remove a port permanently from the firewall rules|
| `firewall-cmd --permanent --add-service=<service>` | Allow a service permanently through the firewall  |


## ***Add & Remove IPs***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `nmcli con mod <interface> +ipv4.addresses <ip_address>` | Add an IPv4 address to the connection    |
| `nmcli con mod <interface> -ipv4.addresses <ip_address>` | Remove an IPv4 address from the connection|
| `nmcli con show <interface>`                 | Show detailed information about the connection       |
| `ip addr add <ip_address> dev <interface>`   | Add a temporary IP address                           |
| `ip addr del <ip_address> dev <interface>`   | Remove a temporary IP address                        |
| `ip addr show <interface>`                   | Show all IP addresses associated with an interface   |


## ***DNF Package Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `dnf update`                                 | Update all packages on the system                    |
| `dnf upgrade`                                | Upgrade packages to the latest version               |
| `dnf install <package_name>`                 | Install a new package                                |
| `dnf remove <package_name>`                  | Remove a package from the system                     |
| `dnf search <package_name>`                  | Search for a package in the repositories             |
| `dnf info <package_name>`                    | Show information about a package                     |
| `dnf list installed`                         | List all installed packages                          |
| `dnf autoremove`                             | Remove unused dependencies                           |
| `dnf clean all`                              | Clear the DNF cache                                  |
| `dnf check-update`                           | Check for available updates without applying them    |
| `dnf history`                                | Show the DNF history of transactions                 |
| `dnf repolist`                               | List all enabled repositories                        |


## ***System Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `systemctl status <service>`                 | Show the status of a system service                  |
| `systemctl start <service>`                  | Start a system service                               |
| `systemctl stop <service>`                   | Stop a system service                                |
| `systemctl restart <service>`                | Restart a system service                             |
| `systemctl enable <service>`                 | Enable a service to start on boot                    |
| `systemctl disable <service>`                | Disable a service from starting on boot              |
| `systemctl mask <service>`                   | Mask a service to prevent it from starting           |
| `systemctl unmask <service>`                 | Unmask a previously masked service                   |
| `systemctl daemon-reload`                    | Reload systemd manager configuration                 |
| `journalctl -xe`                             | View the systemd logs for troubleshooting            |
| `shutdown now`                               | Shutdown the system immediately                      |
| `reboot`                                     | Reboot the system                                    |


