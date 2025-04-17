#!/bin/bash

# Clean up Docker containers, images, volumes, and networks

# Stop all running containers
docker stop $(docker ps -q)

# Remove all containers
docker rm $(docker ps -a -q)

# Remove all dangling images
docker rmi $(docker images -f "dangling=true" -q)

# Remove all unused volumes
docker volume prune -f

# Remove all unused networks
docker network prune -f

echo "Docker cleanup completed."
