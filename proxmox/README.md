
| Description                                                                  |
| ---------------------------------------------------------------------------- |
| All VMs with the same "Order" value are started in the ascending sequence of their VM IDs. When Proxmox hits a VM with a configured startup delay, it pauses for N seconds, then continues with the next VM or the next "Order group". |



## ***Qdevice Install***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `cp /etc/corosync/corosync.conf /etc/corosync/corosync.conf.backup` | Backup Corosync configuration file                 |
| `ls -l /etc/corosync/qdevice/net/`           | List the QDevice network configuration files         |
| `rm -rf /etc/corosync/qdevice/net/nssdb`     | Remove the QDevice NSS database                      |
| `pvecm qdevice setup 0.0.0.0 -f`             | Setup the QDevice with a specified IP address        |
| `pvecm qdevice forget 0.0.0.0`               | Forget the QDevice at the specified IP               |
| `systemctl restart corosync`                 | Restart the Corosync service                         |
| `systemctl restart pve-cluster`              | Restart the Proxmox cluster service                  |


## ***QDevice Removal***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `rm /etc/corosync/qdevice/net/nssdb/qdevice-net-node.p12` | Remove QDevice node certificates on both nodes    |
| `rm -rf /etc/corosync/qdevice/net/nssdb/`    | Remove the QDevice NSS database on both nodes        |
| `pvecm qdevice remove`                       | Remove the QDevice from the cluster                  |


## ***Networking***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `ip a`                                       | Show all network interfaces                          |
| `ip link set <interface> up/down`            | Bring a network interface up or down                 |
| `ifup <interface>`                           | Bring a network interface up                         |
| `ifdown <interface>`                         | Bring a network interface down                       |
| `brctl show`                                 | Show bridge network configurations                   |
| `qm set <vmid> -netX model=<model>`          | Set the network model for a QEMU VM                  |
| `pct set <vmid> -netX name=<name>,bridge=<bridge>` | Set networking options for an LXC container    |


## ***High Availability (HA)***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `pvecm qdevice setup <ip>`                   | Set up a QDevice for High Availability (HA)          |
| `pvecm qdevice forget <ip>`                  | Remove a QDevice from HA configuration               |
| `pvecm qdevice remove`                       | Remove all QDevice configurations                    |
| `ha-manager status`                          | Check the status of the HA manager                   |
| `ha-manager migrate <vmid> <node>`           | Migrate an HA VM or container to another node        |
| `ha-manager relocate <vmid> <node>`          | Relocate an HA resource to another node              |
| `ha-manager add <vmid>`                      | Add a resource to the HA configuration               |
| `ha-manager remove <vmid>`                   | Remove a resource from the HA configuration          |


## ***Basic*** 
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `pveversion`                                 | Show Proxmox version                                 |
| `pvecm status`                               | Check Proxmox Cluster status                         |
| `pvecm nodes`                                | List nodes in the Proxmox cluster                    |
| `pveum user list`                            | List all Proxmox users                               |
| `pveum group list`                           | List all user groups in Proxmox                      |
| `pveam update`                               | Update the Proxmox Appliance catalog                 |
| `pvesh get /cluster/resources --type vm`     | List detailed LXC and QEMU info                      |
| `pvesh get /pools`                           | List pools in Proxmox                                |

 
 ## ***Cluster Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `pvecm status`                               | Display Proxmox cluster status                       |
| `pvecm add <hostname>`                       | Add a node to the Proxmox cluster                    |
| `pvecm delnode <node_name>`                  | Remove a node from the Proxmox cluster               |
| `pvecm expected <node_count>`                | Set expected number of nodes in the cluster          |
| `pvecm qdevice setup <ip_address>`           | Setup QDevice for High Availability (HA)             |
| `pvecm qdevice forget <ip_address>`          | Forget a QDevice                                     |
| `pvecm updatecerts`                          | Update certificates for the Proxmox cluster          |


## ***Node & VM Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `qm list`                                    | List all QEMU VMs on the node                        |
| `qm start <vmid>`                            | Start a specific QEMU VM                             |
| `qm stop <vmid>`                             | Stop a specific QEMU VM                              |
| `qm migrate <vmid> <target_node>`            | Migrate a QEMU VM to another node                    |
| `qm status <vmid>`                           | Check the status of a specific QEMU VM               |
| `pct list`                                   | List all LXC containers                              |
| `pct start <container_id>`                   | Start an LXC container                               |
| `pct stop <container_id>`                    | Stop an LXC container                                |
| `pct create <vmid> <template>`               | Create a new LXC container from a template           |
| `pct resize <vmid> <disk>`                   | Resize the disk of an LXC container                  |


## ***Storage & Backup***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `pvesm status`                               | Show the status of all storage                       |
| `pvesm add <type> <id>`                      | Add a storage pool (e.g., NFS, iSCSI)                |
| `pvesm remove <id>`                          | Remove a storage pool                                |
| `vzdump <vmid>`                              | Backup a specific VM or container                    |
| `vzdump --all`                               | Backup all VMs and containers                        |
| `vzdump --compress <lzop|gzip>`              | Backup and compress VM data                          |
| `vzdump --storage <storage_id>`              | Specify the storage destination for backups          |
| `qmrestore <backup_file> <vmid>`             | Restore a QEMU VM from backup                        |
| `pct restore <backup_file> <vmid>`           | Restore an LXC container from backup                 |


## ***Cluster/Node Maintenance***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `systemctl start pve-cluster`                | Start the Proxmox cluster service                    |
| `systemctl stop pve-cluster`                 | Stop the Proxmox cluster service                     |
| `systemctl start corosync`                   | Start the Corosync cluster engine                    |
| `systemctl stop corosync`                    | Stop the Corosync cluster engine                     |
| `pmxcfs -l`                                  | Start Proxmox file system in local mode              |
| `killall pmxcfs`                             | Kill the Proxmox file system process                 |
| `pvecm expected 1`                           | Set the expected number of cluster nodes to 1        |
| `pvecm updatecerts`                          | Update cluster certificates                          |
| `systemctl restart pve-cluster`              | Restart the Proxmox cluster service                  |


## ***Disable Clustering***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `systemctl stop pve-cluster`                 | Stop the Proxmox cluster service                     |
| `systemctl stop corosync`                    | Stop the Corosync service                            |
| `pmxcfs -l`                                  | Start Proxmox file system in local mode              |
| `rm /etc/pve/corosync.conf`                  | Remove Corosync configuration file                   |
| `rm /etc/corosync/*`                         | Remove all Corosync configuration files              |
| `killall pmxcfs`                             | Kill all Proxmox file system processes               |
| `systemctl start pve-cluster`                | Restart the Proxmox cluster service                  |




