## **Nmap**


### **Useful Scanning Combinations**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -sS -O -T4 <target>`                     | Stealth SYN scan with OS detection                         |
| `nmap -A -T4 <target>`                         | Aggressive scan with OS detection, version, script scanning, and traceroute |
| `nmap -sP <subnet>`                            | Ping sweep to find live hosts in a subnet                  |


### **Service and Version Detection**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -sV <target>`                            | Detect service versions                                    |
| `nmap -sV --version-intensity <level> <target>`| Set version intensity (0 to 9, default is 7)               |
| `nmap -A <target>`                             | Detect OS, version, scripts, and traceroute                |


### **Script Scanning (NSE)**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap --script <script_name> <target>`         | Run a specific NSE script                                  |
| `nmap --script default <target>`               | Run default NSE scripts                                    |
| `nmap --script vuln <target>`                  | Run vulnerability detection scripts                        |
| `nmap --script http-enum <target>`             | Enumerate web server directories and services              |
| `nmap --script smb-enum-shares <target>`       | Enumerate SMB shares on a target                           |
| `nmap --script dns-brute <target>`             | Perform DNS brute force                                    |
| `nmap --script ftp-anon <target>`              | Check for anonymous FTP access                             |
| `nmap --script-args <args>`                    | Pass arguments to scripts                                  |
| `nmap --script-help <script_name>`             | Get help for a specific NSE script                         |


### **Firewall and IDS/IPS Evasion**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -f <target>`                             | Fragment packets                                           |
| `nmap -D RND:10 <target>`                      | Use decoys for scanning to obscure the real source         |
| `nmap -S <spoofed IP> <target>`                | Spoof the source IP                                        |
| `nmap -g <port> <target>`                      | Use a specific source port for the scan                    |
| `nmap --source-port <port>`                    | Use a specific source port (e.g., 80)                      |
| `nmap --data-length <num>`                     | Append random data to the packets to evade detection       |





### **Basic Scanning**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap <target>`                                | Basic scan on a single target                              |
| `nmap <target1> <target2> <targetN>`           | Scan multiple targets                                      |
| `nmap <IP range>`                              | Scan a range of IP addresses                               |
| `nmap <subnet>`                                | Scan a whole subnet                                        |
| `nmap -iL <list.txt>`                          | Scan targets listed in a file                              |
| `nmap -p <port>`                               | Scan specific ports                                        |
| `nmap -p 80,443 <target>`                      | Scan multiple ports                                        |
| `nmap -p- <target>`                            | Scan all 65535 ports                                       |
| `nmap -F <target>`                             | Fast scan (fewer ports)                                    |
| `nmap -sL <target>`                            | List targets without scanning                              |


### **Operating System Detection**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -O <target>`                             | Detect the operating system of the target                  |
| `nmap --osscan-limit <target>`                 | Limit OS detection to promising targets                    |
| `nmap --osscan-guess <target>`                 | Make a guess if OS detection is inconclusive               |

### **Scanning Techniques**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -sS <target>`                            | Stealth scan (SYN scan)                                    |
| `nmap -sT <target>`                            | TCP connect scan                                           |
| `nmap -sU <target>`                            | UDP scan                                                   |
| `nmap -sN <target>`                            | TCP Null scan                                              |
| `nmap -sF <target>`                            | TCP FIN scan                                               |
| `nmap -sX <target>`                            | Xmas scan                                                  |
| `nmap -sA <target>`                            | TCP ACK scan                                               |
| `nmap -sW <target>`                            | TCP Window scan                                            |
| `nmap -sM <target>`                            | TCP Maimon scan                                            |

### **Timing and Performance**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -T0 <target>`                            | Paranoid scan (very slow, evades IDS)                      |
| `nmap -T1 <target>`                            | Sneaky scan (slow)                                         |
| `nmap -T2 <target>`                            | Polite scan (reduced load on the network)                  |
| `nmap -T3 <target>`                            | Normal scan (default timing)                               |
| `nmap -T4 <target>`                            | Aggressive scan (faster, but more detectable)              |
| `nmap -T5 <target>`                            | Insane scan (fastest, highly detectable)                   |
| `nmap --max-retries <num>`                     | Set the maximum number of retries                          |
| `nmap --max-rate <rate>`                       | Limit scan rate to <rate> packets per second               |
| `nmap --min-rate <rate>`                       | Set a minimum packet rate                                  |



### **Output Options**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -oN <filename>`                          | Normal output to a file                                    |
| `nmap -oX <filename>.xml`                      | Output results in XML format                               |
| `nmap -oG <filename>`                          | Output results in grepable format                          |
| `nmap -oA <basename>`                          | Output results in all formats (normal, XML, grepable)      |
| `nmap -v <target>`                             | Increase verbosity                                         |
| `nmap -vv <target>`                            | Double verbosity                                           |
| `nmap -d <target>`                             | Enable debugging output                                    |


### **Scan Random Hosts**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -iR <number>`                            | Scan random hosts                                          |


### **IPv6 Scanning**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -6 <target>`                             | Scan using IPv6                                            |


### **Port Scanning**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -p 80 <target>`                          | Scan a specific port                                       |
| `nmap -p 1-100 <target>`                       | Scan a range of ports                                      |
| `nmap -p- <target>`                            | Scan all 65535 ports                                       |
| `nmap --top-ports <number> <target>`           | Scan the top <number> ports (most common services)         |
| `nmap --exclude-ports <port_range>`            | Exclude certain ports from scanning                        |


### **Network and Host Discovery**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap -sn <target>`                            | Ping scan, just discover live hosts                        |
| `nmap -PE <target>`                            | ICMP echo request to discover hosts                        |
| `nmap -PP <target>`                            | ICMP timestamp request to discover hosts                   |
| `nmap -PS <port> <target>`                     | TCP SYN ping on a specific port                            |
| `nmap -PA <port> <target>`                     | TCP ACK ping on a specific port                            |
| `nmap -PU <port> <target>`                     | UDP ping on a specific port                                |
| `nmap -PR <target>`                            | ARP discovery on local network                             |


### **Traceroute**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap --traceroute <target>`                   | Trace the route to the target                              |


### **Topology and Visualization**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `nmap --iflist`                                | Show network interfaces and routes                         |
| `nmap --packet-trace <target>`                 | Show all sent and received packets                         |

