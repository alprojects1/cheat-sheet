## ***Environment Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker-compose config`                      | Validate and view Compose configuration              |
| `docker-compose --env-file <file>`           | Specify an environment file to use                   |
| `docker-compose run -e <VAR>=<value>`        | Set environment variables for a one-time command     |
| `docker-compose exec -e <VAR>=<value>`       | Set environment variables for an exec command        |
| `docker-compose config --resolve-image-digests` | Resolve image digests instead of using tag-based references 


## ***Networking***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker-compose up --scale <service_name>=<number>` | Scale up/down a service                       |
| `docker-compose ps`                          | List containers defined in the Compose file          |
| `docker-compose port <service_name> <port>`  | Display the public-facing port of a specific service |
| `docker-compose down --volumes`              | Remove networks created by `docker-compose up`       |
| `docker-compose config --services`           | List all services in the Compose configuration file  |
| `docker-compose config --volumes`            | List all volumes in the Compose configuration file   |


## ***Service Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker-compose scale <service_name>=<number>` | Scale a service to a specified number of containers|
| `docker-compose logs <service_name>`         | View logs for a specific service                     |
| `docker-compose logs -f`                     | Tail logs of all services defined in the Compose file|
| `docker-compose run <service_name> <command>` | Run a one-time command on a service                 |
| `docker-compose kill <service_name>`         | Force stop a specific service                        |
| `docker-compose rm <service_name>`           | Remove a stopped service container                   |
| `docker-compose exec <service_name> <command>` | Execute a command inside a running service container|


## ***Volumes***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker-compose up -d <service_name>`        | Start a service with a mounted volume in detached mode |
| `docker-compose down --volumes`              | Remove all volumes used by the services              |
| `docker-compose run --rm -v <volume>:<path>` | Run a one-time container with a specified volume     |
| `docker-compose up -v`                       | Recreate containers with attached volumes            |
| `docker-compose logs -f --tail=100`          | View the last 100 logs with real-time updates        |



## ***Inspecting & Debugging***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker-compose ps`                          | List all containers with their status                |
| `docker-compose logs <service_name>`         | View logs for a specific service                     |
| `docker-compose logs -f`                     | Tail logs for all services                           |
| `docker-compose top`                         | Display processes running inside the containers      |
| `docker-compose config`                      | Validate and view the Compose file configuration     |
| `docker-compose config --services`           | List all services in the Compose file                |
| `docker-compose config --volumes`            | List all volumes in the Compose file                 |
| `docker-compose config -q`                   | Check if the Compose file is valid                   |
| `docker-compose exec <service_name> /bin/bash` | Open a bash shell in a running container             |



##  ***Basic*** 
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker-compose --version`                   | Display Docker Compose version                       |
| `docker-compose up`                          | Create and start containers from a Compose file      |
| `docker-compose up -d`                       | Start containers in detached mode                    |
| `docker-compose down`                        | Stop and remove containers, networks, images, and volumes |
| `docker-compose start`                       | Start existing services defined in the Compose file  |
| `docker-compose stop`                        | Stop running services without removing them          |
| `docker-compose restart`                     | Restart services                                     |




## ***Building & Images***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker-compose build`                       | Build or rebuild services                            |
| `docker-compose build --no-cache`            | Build without using cache                            |
| `docker-compose up --build`                  | Build and start the services                         |
| `docker-compose pull`                        | Pull service images defined in the Compose file      |
| `docker-compose push`                        | Push service images to a registry                    |
| `docker-compose images`                      | List all images used by the services                 |



## ***System Management***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker-compose pause`                       | Pause all running services                           |
| `docker-compose unpause`                     | Unpause paused services                              |
| `docker-compose stop`                        | Stop all services                                    |
| `docker-compose start`                       | Start all services                                   |
| `docker-compose restart`                     | Restart all services                                 |
| `docker-compose down --rmi all`              | Remove all services and their images                 |
| `docker-compose version`                     | Show Docker Compose version information              |





