## ***Networking***
| Command                                                   | Description                                                       |
| -----------------------------------------------------     | -----------------------------------------------      |  
| `docker network ls`                                       | List all Docker networks                             |
| `docker network create <network_name>`                    | Create a new Docker network                          |
| `docker network connect <network_name> <container_id>`    | Connect a container to a network                     |
| `docker network disconnect <network_name> <container_id>` | Disconnect a container from a network                |
| `docker network inspect <network_name>`                   | Display detailed information on a specific network   |
| `docker network rm <network_name>`                        | Remove a Docker network                              |
| `docker network prune`                                    | Remove all unused networks                           |
| `docker run --network <network_name> <image>`             | Run a container on a specific network                |
| `docker network create --driver bridge <name>`            | Create a bridge network                              |


## ***Volumes***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker volume ls`                           | List all Docker volumes                              |
| `docker volume create <volume_name>`         | Create a new Docker volume                           |
| `docker volume rm <volume_name>`             | Remove a Docker volume                               |
| `docker volume prune`                        | Remove all unused volumes                            |
| `docker run -v <volume_name>:/path <image>`  | Attach a volume to a container                       |
| `docker inspect <volume_name>`               | Show details of a Docker volume                      |
| `docker volume inspect <volume_name>`        | Inspect volume details (mountpoint, usage, etc.)     |
| `docker volume create --driver <driver_name> <volume_name>` | Create a volume with a specific driver|


## ***Executing Commands in Containers***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker exec -it <container_id> <command>`   | Execute a command inside a running container         |
| `docker exec -it <container_id> /bin/bash`   | Open a bash shell in a running container             |
| `docker exec -it <container_id> /bin/sh`     | Open a shell in a running container (if bash not available) |
| `docker run -it <image_name> /bin/bash`      | Run a container and immediately access its shell     |
| `docker run -d <image_name> <command>`       | Run a container in detached mode                     |


## ***Image***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker rmi <image_id>`                      | Remove a specific Docker image                       |
| `docker image prune`                         | Remove all unused images                             |
| `docker build -t <image_name> <path>`        | Build a Docker image from a Dockerfile               |
| `docker tag <image_id> <repository:tag>`     | Tag an image with a new name                         |
| `docker save -o <file_name>.tar <image_name>`| Save an image to a tar archive                       |
| `docker load -i <file_name>.tar`             | Load an image from a tar archive                     |
| `docker push <repository:tag>`               | Push an image to a Docker registry                   |
| `docker commit <container_id> <image_name>`  | Create an image from a container's changes           |
| `docker export <container_id> > <file>.tar`  | Export a container’s filesystem as a tar archive     |


## ***Container*** 
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker start $(docker ps -a -q)`            | Start all stopped containers                         |
| `docker start <container_id>`                | Start a specific container                           |
| `docker stop <container_id>`                 | Stop a specific running container                    |
| `docker restart <container_id>`              | Restart a specific container                         |
| `docker rm <container_id>`                   | Remove a specific container                          |
| `docker container prune`                     | Remove all stopped containers                        |
| `docker pause <container_id>`                | Pause a running container                            |
| `docker unpause <container_id>`              | Unpause a paused container                           |
| `docker update <container_id>`               | Update resource limits of a running container        |
| `docker wait <container_id>`                 | Block until a container stops and then print its exit code |
| `docker kill <container_id>`                 | Kill a running container                             |


## ***Inspecting & Debugging***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker logs <container_id>`                 | Show logs of a specific container                    |
| `docker inspect <container_id>`              | Inspect detailed information about a container       |
| `docker stats <container_id>`                | Show real-time statistics for a container            |
| `docker attach <container_id>`               | Attach to a running container's input/output         |
| `docker events`                              | Get real-time events from the Docker daemon          |
| `docker diff <container_id>`                 | Inspect changes made to a container’s filesystem     |
| `docker top <container_id>`                  | Display the processes running inside a container     |
| `docker system df`                           | Show Docker disk usage (images, containers, etc.)    |


## ***Basic***
| Command                                      | Description                                          |
| -------------------------------------------- | ---------------------------------------------------- |
| `docker --version`                           | Show Docker version                                  |
| `docker pull <image_name>`                   | Pull an image from a Docker registry                 |
| `docker run <image_name>`                    | Run a container from an image                        |
| `docker ps`                                  | List all running containers                          |
| `docker ps -a`                               | List all containers (running and stopped)            |
| `docker images`                              | List all Docker images on the system                 |
| `docker search <image_name>`                 | Search Docker Hub for images                         |
| `docker rename <old_name> <new_name>`        | Rename an existing container                         |
| `docker history <image_name>`                | Show history of an image (layers)                    |


