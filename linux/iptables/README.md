## ***Managing INPUT Chain Rules***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `iptables -A INPUT -p tcp --dport <port> -j ACCEPT` | Allow incoming TCP connections on a specific port|
| `iptables -A INPUT -p udp --dport <port> -j ACCEPT` | Allow incoming UDP connections on a specific port|
| `iptables -A INPUT -s <ip_address> -j ACCEPT` | Allow traffic from a specific IP address            |
| `iptables -A INPUT -i <interface> -j ACCEPT` | Allow traffic from a specific network interface      |
| `iptables -A INPUT -p icmp -j ACCEPT`        | Allow ICMP (ping) requests                           |
| `iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT` | Allow incoming traffic for established connections|
| `iptables -A INPUT -p tcp --dport <port> -j DROP` | Drop all incoming traffic on a specific port    |
| `iptables -A INPUT -j DROP`                  | Drop all incoming traffic (default deny rule)        |


## ***Managing OUTPUT Chain Rules***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `iptables -A OUTPUT -p tcp --dport <port> -j ACCEPT` | Allow outgoing TCP connections on a specific port|
| `iptables -A OUTPUT -p udp --dport <port> -j ACCEPT` | Allow outgoing UDP connections on a specific port|
| `iptables -A OUTPUT -p icmp -j ACCEPT`       | Allow outgoing ICMP (ping) requests                  |
| `iptables -A OUTPUT -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT` | Allow new and established outgoing connections|
| `iptables -A OUTPUT -j DROP`                 | Drop all outgoing traffic (default deny rule)        |


## ***NAT & Masquerading***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `iptables -t nat -A POSTROUTING -o <interface> -j MASQUERADE` | Enable NAT masquerading for outgoing traffic|
| `iptables -t nat -A PREROUTING -p tcp --dport <port> -j DNAT --to-destination <ip_address>` | Redirect incoming traffic to another IP|
| `iptables -t nat -A POSTROUTING -s <subnet> -o <interface> -j SNAT --to-source <ip_address>` | Change the source IP for outgoing packets|
| `iptables -t nat -L`                         | List all NAT rules                                   |
| `iptables -t nat -F`                         | Flush all NAT rules                                  |


## ***Logging & Monitoring***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `iptables -A INPUT -p tcp --dport <port> -j LOG --log-prefix "TCP_IN: "` | Log incoming TCP traffic on a specific port|
| `iptables -A OUTPUT -p udp --dport <port> -j LOG --log-prefix "UDP_OUT: "` | Log outgoing UDP traffic on a specific port|
| `iptables -A FORWARD -j LOG --log-prefix "FORWARD_DROP: "` | Log all forwarded traffic              |
| `dmesg | grep "TCP_IN"`                      | View logged incoming traffic                         |
| `iptables -nvL`                              | Display packet and byte counters for all rules       |


## ***Managing FORWARD Chain Rules***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `iptables -A FORWARD -p tcp --dport <port> -j ACCEPT` | Allow forwarding of TCP traffic on a specific port|
| `iptables -A FORWARD -s <ip_address> -j ACCEPT` | Allow traffic forwarding from a specific IP address  |
| `iptables -A FORWARD -d <ip_address> -j ACCEPT` | Allow traffic forwarding to a specific IP address    |
| `iptables -A FORWARD -p tcp --dport <port> -j DROP` | Drop forwarded TCP traffic on a specific port    |
| `iptables -A FORWARD -j DROP`                | Drop all forwarded traffic (default deny rule)          |


## ***Basic***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `iptables -L`                                | List all active firewall rules                       |
| `iptables -F`                                | Flush all firewall rules (clear all rules)           |
| `iptables -X`                                | Delete all custom chains                             |
| `iptables -Z`                                | Zero all packet and byte counters                    |
| `iptables -P INPUT ACCEPT`                   | Set default policy for the INPUT chain to ACCEPT     |
| `iptables -P OUTPUT ACCEPT`                  | Set default policy for the OUTPUT chain to ACCEPT    |
| `iptables -P FORWARD ACCEPT`                 | Set default policy for the FORWARD chain to ACCEPT   |
| `iptables -S`                                | List all rules in a table format                     |


## ***Saving & Restoring IPtables Rules***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `iptables-save > /etc/iptables/rules.v4`     | Save current IPv4 rules to a file                    |
| `iptables-restore < /etc/iptables/rules.v4`  | Restore IPv4 rules from a saved file                 |
| `iptables-save > /etc/iptables/rules.v6`     | Save current IPv6 rules to a file                    |
| `iptables-restore < /etc/iptables/rules.v6`  | Restore IPv6 rules from a saved file                 |
