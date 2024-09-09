## ***Swarm Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker swarm init`                          | Initialize a new Swarm                               |
| `docker swarm join --token <token> <manager_ip>:<port>` | Join a node to an existing Swarm                 |
| `docker swarm leave --force`                 | Forcefully leave the Swarm (for managers)            |
| `docker swarm update --autolock=true`        | Enable autolocking for Swarm cluster                 |
| `docker swarm unlock`                        | Unlock a locked Swarm                                |
| `docker swarm unlock-key`                    | Manage the unlock key for autolocking                |
| `docker swarm update --dispatcher-heartbeat <seconds>` | Adjust heartbeat intervals between Swarm managers and workers |


## ***Service Networking***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker network create --driver overlay <network_name>` | Create an overlay network for Swarm services|
| `docker network ls`                          | List all networks in the Swarm                       |
| `docker service update --network-add <network_name> <service_name>` | Attach a service to a network |
| `docker network inspect <network_name>`      | Inspect an overlay network                           |
| `docker network rm <network_name>`           | Remove a network                                     |
| `docker service create --network <network_name> <image>` | Create a service attached to a network   |


## ***Basic Commands***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker swarm init`                          | Initialize a new Swarm cluster                       |
| `docker swarm join --token <token> <manager_ip>:<port>` | Join a Swarm as a worker or manager using the token |
| `docker swarm leave`                         | Leave the Swarm (for a worker node)                  |
| `docker swarm leave --force`                 | Force a manager to leave the Swarm                   |
| `docker node ls`                             | List all nodes in the Swarm                          |
| `docker node inspect <node_id>`              | Inspect a specific node                              |
| `docker node rm <node_id>`                   | Remove a node from the Swarm                         |
| `docker swarm update --task-history-limit <number>` | Update Swarm settings like task history       |


## ***Service Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker service create --name <service_name> <image>` | Create a new service in the Swarm           |
| `docker service ls`                          | List all services running in the Swarm               |
| `docker service inspect <service_name>`      | Inspect a specific service in the Swarm              |
| `docker service scale <service_name>=<number>` | Scale a service to a specified number of replicas  |
| `docker service ps <service_name>`           | List tasks associated with a service                 |
| `docker service rm <service_name>`           | Remove a service from the Swarm                      |
| `docker service logs <service_name>`         | View logs of a specific service                      |
| `docker service update --image <new_image> <service_name>` | Update a service to use a new image    |


## ***Backup & Restore***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker swarm unlock-key --rotate`           | Rotate the unlock key for the Swarm                  |
| `docker node update --availability drain <node_id>` | Drain a node before backing up                    |
| `docker service update --force <service_name>` | Force update a service to refresh its configuration |
| `docker node demote <node_id>`               | Demote a manager to worker for cluster safety        |
| `docker service rollback <service_name>`     | Rollback a service to its previous version           |


## ***Node Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker node promote <node_id>`              | Promote a worker node to manager                     |
| `docker node demote <node_id>`               | Demote a manager node to worker                      |
| `docker node ls`                             | List all nodes in the Swarm                          |
| `docker node update --availability drain <node_id>` | Set a node to "drain" mode (won't run new tasks)|
| `docker node update --availability active <node_id>` | Set a node to "active" mode                  |
| `docker node update --label-add key=value <node_id>` | Add or update a label on a node              |
| `docker node rm <node_id>`                   | Remove a node from the Swarm                         |


## ***Task Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker service ps <service_name>`           | List tasks running in a specific service             |
| `docker inspect <task_id>`                   | Inspect a specific task                              |
| `docker node ps <node_id>`                   | List tasks running on a specific node                |
| `docker service scale <service_name>=<number>` | Scale a service up or down by number of replicas   |
| `docker service update --force <service_name>` | Force update of a running service                  |
| `docker service rollback <service_name>`     | Roll back to the previous version of a service       |


## ***Troubleshooting & Logs***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker service logs <service_name>`         | View logs for a specific service                     |
| `docker node inspect <node_id>`              | Inspect detailed information about a node            |
| `docker service ps <service_name>`           | List the running tasks for a service                 |
| `docker inspect <task_id>`                   | Inspect a specific task within a service             |
| `docker events`                              | Get real-time events from the Docker daemon          |
| `docker node ls`                             | List all nodes in the Swarm                          |








