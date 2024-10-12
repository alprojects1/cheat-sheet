## **WSL**

### **Backup and Restore WSL**
| Command                                                      | Description                                                |
|--------------------------------------------------------------|------------------------------------------------------------|
| `wsl --import (distribution) (install location) (file location and filename)` | Restore a WSL Distro from Backup          |
| `wsl --export (distribution) (filename.tar)`                  | Backup a WSL Distro                                       |
| `wsl --list --verbose`                                        | List Running Distros                                      |
| `wsl --distribution <distro>`                                 | Start/Restart a Distro                                    |
| `wsl --shutdown`                                              | Terminate All Running Distros and WSL process             |
| `wsl --t <distro>`                                            | Terminate a Running Distro                                |



### **Networking**
| Command                                                                 | Description                                                |
|-------------------------------------------------------------------------|------------------------------------------------------------|
| `netsh interface portproxy add v4tov4 listenport=$port connectaddress=$remoteaddr` | Add Port Forwarding                             |
| `netsh advfirewall firewall add rule name=$port dir=in action=allow protocol=TCP localport=$port` | Add Firewall Rule                |
| `netsh interface portproxy delete v4tov4 listenport=$port`              | Delete Port Forwarding                                     |
| `netsh advfirewall firewall delete rule name=$port`                     | Delete Firewall Rule                                       |
| `netsh interface portproxy show v4tov4`                                 | Show Port Forwardings                                      |


### **Symbolic Links**
| Command                                                      | Description                                                |
|--------------------------------------------------------------|------------------------------------------------------------|
| `sudo ln -s /mnt/c/Users/<user>/.ssh ~/.ssh`                  | Link .ssh folder                                          |
| `sudo ln -s /mnt/c/Users/<user>/.kube ~/.kube`                | Link .kube folder                                         |
