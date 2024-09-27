## **ssh**



### **Tunneling with SSH**
| Command                                | Description                                                                   |
|----------------------------------------|-------------------------------------------------------------------------------|
| `ssh -L 8080:localhost:80 user@host`   | Set up a local SSH tunnel, forwarding port 8080 locally to port 80 on the remote machine.|
| `ssh -R 8080:localhost:80 user@host`   | Set up a remote SSH tunnel, forwarding remote port 8080 to local port 80.     |
| `ssh -D 1080 user@host`                | Create a dynamic SOCKS proxy on local port 1080 using SSH.                    |


### **SSH Configuration and Management**
| Command                                | Description                                                                   |
|----------------------------------------|-------------------------------------------------------------------------------|
| `~/.ssh/config`                        | The SSH configuration file for customizing SSH behavior for different hosts.  |
| `ssh -F <configfile> user@host`        | Use a specific SSH configuration file.                                        |
| `ssh-keygen`                           | Generate a new SSH key pair (public/private).                                 |
| `ssh-agent bash`                       | Start the SSH agent in the background for managing keys.                      |
| `ssh-add <keyfile>`                    | Add a private key to the SSH agent.                                           |


### **SSH Key Management**
| Command                                | Description                                                                   |
|----------------------------------------|-------------------------------------------------------------------------------|
| `ssh-keygen -t rsa -b 4096`            | Generate a new 4096-bit RSA key pair.                                         |
| `ssh-keygen -t ed25519`                | Generate a new ED25519 key pair (modern alternative to RSA).                  |
| `ssh-keygen -f ~/.ssh/id_rsa -N ""`    | Generate a key without a passphrase.                                          |
| `ssh-keygen -l -f <keyfile>`           | Display the fingerprint of an SSH public key.                                 |


### **Basic SSH**
| Command                                | Description                                                                   |
|----------------------------------------|-------------------------------------------------------------------------------|
| `ssh user@host`                        | Log in to a remote machine using SSH.                                         |
| `ssh -p <port> user@host`              | Log in using SSH on a specific port.                                          |
| `ssh -i <keyfile> user@host`           | Use a specific SSH private key file to log in.                                |
| `ssh-copy-id user@host`                | Copy your public key to a remote machine for password-less login.             |


### **File Transfer with SCP (Secure Copy)**
| Command                                | Description                                                                   |
|----------------------------------------|-------------------------------------------------------------------------------|
| `scp file.txt user@host:/path`         | Copy a local file to a remote host.                                           |
| `scp user@host:/path/file.txt .`       | Copy a file from a remote host to the local machine.                          |
| `scp -P <port> file.txt user@host:/path`| Specify a port when copying files with SCP.                                  |
| `scp -r dir/ user@host:/path`          | Recursively copy a directory to a remote host.                                |



### **SSH Multiplexing**
| Command                                | Description                                                                   |
|----------------------------------------|-------------------------------------------------------------------------------|
| `ssh -O check user@host`               | Check the status of a multiplexed connection.                                 |
| `ssh -O exit user@host`                | Terminate the master connection for SSH multiplexing.                         |
| `ssh -S /path/to/control user@host`    | Specify a control socket for multiplexing.                                    |



### **Troubleshooting SSH**
| Command                                | Description                                                                   |
|----------------------------------------|-------------------------------------------------------------------------------|
| `ssh -v user@host`                     | Enable verbose output to troubleshoot connection issues.                      |
| `ssh -vvv user@host`                   | Enable maximum verbosity for detailed troubleshooting.                        |
| `ssh-keyscan -H host`                  | Scan the SSH keys of a remote host.                                           |
| `ssh-add -l`                           | List identities currently managed by the SSH agent.                           |

