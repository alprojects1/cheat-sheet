***Basic Commands*** 
docker --version 
docker pull <image_name> 
docker run <image_name> 
docker ps 
docker ps -a 
docker images 

***Container Management***
docker start $(docker ps -a -q) 
docker start <container_id> 
docker stop <container_id> 
docker restart <container_id> 
docker rm <container_id> 
docker container prune 

***Image Management***
docker rmi <image_id> 
docker image prune 
docker build -t <image_name> <path_to_dockerfile_directory> 

***Networking*** 
docker network ls 
docker network create <network_name> 
docker network connect <network_name> <container_id> 
docker network disconnect <network_name> <container_id> 

***Volumes*** 
docker volume ls 
docker volume create <volume_name> 
docker volume rm <volume_name> 

***Inspecting and Debugging*** 
docker logs <container_id> 
docker inspect <container_id> 
docker stats <container_id> 
docker attach <container_id> 

***Executing Commands in Containers*** 
docker exec -it <container_id> <command> 
docker exec -it <container_id> /bin/bash 

***System Management*** 
docker info 
docker system prune 
