## **Wazuh Common Commands**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `/var/ossec/bin/ossec-control start`           | Start the Wazuh manager                                    |
| `/var/ossec/bin/ossec-control stop`            | Stop the Wazuh manager                                     |
| `/var/ossec/bin/ossec-control restart`         | Restart the Wazuh manager                                  |
| `/var/ossec/bin/ossec-control status`          | Check the status of the Wazuh manager                      |
| `/var/ossec/bin/manage_agents`                 | Manage Wazuh agents (add, remove, extract keys)            |
| `/var/ossec/bin/agent_control -ls`             | List connected agents                                      |
| `/var/ossec/bin/agent_control -r <agent_ID>`   | Remove an agent by ID                                      |
| `/var/ossec/bin/agent_control -k <agent_ID>`   | Restart a specific agent                                   |


## **Wazuh Rules and Configurations**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `/var/ossec/bin/update_ruleset`                | Update Wazuh rules from the community or other sources     |
| `/var/ossec/bin/rule_manager`                  | Manage rules for Wazuh                                     |
| `/var/ossec/bin/rules_test`                    | Test a specific rule in Wazuh                              |


## **Wazuh Alerts and Monitoring**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `/var/ossec/bin/analysisd -f`                  | Run the Wazuh analysis daemon in the foreground            |
| `/var/ossec/bin/ossec-logtest`                 | Analyze log data against defined rules                     |
| `/var/ossec/bin/cluster_control`               | Control Wazuh cluster (start/stop nodes, check status)     |
| `/var/ossec/bin/wazuh-db`                      | Interact with the Wazuh database                           |


## **Wazuh Log Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `/var/ossec/bin/clear_stats`                   | Clear Wazuh statistics logs                                |
| `/var/ossec/bin/wazuh-logtest`                 | Test Wazuh log collection                                  |
| `/var/ossec/bin/wazuh-agentd -f`               | Run Wazuh agent in the foreground for debugging            |


## **Wazuh Agents**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `/var/ossec/bin/agent_auth`                    | Register a Wazuh agent with the manager                    |
| `/var/ossec/bin/wazuh-agentd -i`               | Run the Wazuh agent in interactive mode                    |
| `/var/ossec/bin/agent_upgrade`                 | Upgrade a Wazuh agent remotely                             |
