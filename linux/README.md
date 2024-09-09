## ***Network***

| Command                                     | Description                                                   | 
| ------------------------------------------- | ------------------------------------------------------------- |
| `ifconfig`                                  | Show network interfaces and IP addresses                      |
| `ip addr`                                   | Show IP addresses and network interfaces                      |
| `ping <host>`                               | Send ICMP echo requests to test connectivity                  |
| `traceroute <host>`                         | Trace the route packets take to a network host                |
| `netstat -tuln`                             | Show open ports and listening services                        |
| `ss -tuln`                                  | Show open ports and listening services (modern replacement for netstat) |
| `dig <domain>`                              | Query DNS records for a domain                                |
| `host <domain>`                             | Lookup DNS information about a domain                         |
| `nslookup <domain>`                         | Query DNS records for a domain                                |
| `scp <source> <user@remote_host:/destination>` | Securely copy files between hosts using SSH                |
| `ssh <user@host>`                           | Connect to a remote host using SSH                            |
| `iptables -L`                               | List firewall rules                                           |
| `ufw status`                                | Check the status of UFW firewall                              |

## ***Systemd***

| Command                                            | Description                                               |
| -------------------------------------------------- | --------------------------------------------------------- |
| `systemctl isolate multi-user.target`              | Switch to multi-user mode temporarily                     |
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

## ***Filesystem***

| Command                                     | Description                                                   |
| ------------------------------------------- | ------------------------------------------------------------- |
| `df -h`                                     | Display disk space usage in human-readable format             |
| `du -sh <directory>`                        | Show the size of a directory in a human-readable format       |
| `mount <device> <mount_point>`              | Mount a device to a directory                                 |
| `umount <device>`                           | Unmount a device                                              |
| `lsblk`                                     | List information about block devices                          |
| `blkid`                                     | Get information about block devices (UUID, type, etc.)        |
| `mkfs.ext4 <device>`                        | Format a device as ext4 filesystem                            |
| `fsck <device>`                             | Check and repair filesystem errors                            |
| `tune2fs -l <device>`                       | List filesystem attributes                                    |
| `resize2fs <device>`                        | Resize ext2/ext3/ext4 filesystem                              |
| `dd if=<input_file> of=<output_file>`       | Copy a file or create a disk image                            |
| `rsync -av <source> <destination>`          | Synchronize files and directories between two locations       |
| `ln -s <target> <link_name>`                | Create a symbolic link                                        |


## ***Process*** 

| Command                                     | Description                                                   |
| ------------------------------------------- | ------------------------------------------------------------- |
| `ps aux`                                    | Show all running processes                                    |
| `top`                                       | Display dynamic real-time information about running processes |
| `htop`                                      | Interactive process viewer (if installed)                     |
| `kill <pid>`                                | Terminate a process by process ID                             |
| `killall <process_name>`                    | Kill all processes by name                                    |
| `nice -n <priority> <command>`              | Start a process with a given priority                         |
| `renice <priority> <pid>`                   | Change the priority of an existing process                    |
| `pkill <pattern>`                           | Send a signal to processes based on a name pattern            |
| `bg <job_number>`                           | Resume a stopped job in the background                        |
| `fg <job_number>`                           | Bring a background job to the foreground                      |


## ***Package*** (Debian-based)

| Command                                     | Description                                                  |
| ------------------------------------------- | ------------------------------------------------------------ |
| `apt update`                                | Update the package list                                      |
| `apt upgrade`                               | Upgrade installed packages to the latest version              |
| `apt install <package_name>`                | Install a new package                                        |
| `apt remove <package_name>`                 | Remove a package                                             |
| `apt purge <package_name>`                  | Remove a package and its configuration files                 |
| `dpkg -i <package.deb>`                     | Install a package manually from a .deb file                  |
| `apt search <package_name>`                 | Search for a package                                         |
| `apt show <package_name>`                   | Show information about a package                             |
| `apt list --installed`                      | List all installed packages                                  |
| `dpkg --get-selections`                     | List installed packages                                      |
| `apt autoremove`                            | Remove unused packages                                       |
