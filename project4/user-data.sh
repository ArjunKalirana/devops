#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

# Pull your Docker image from Docker Hub
docker pull YOUR_DOCKERHUB_USERNAME/devops-app:latest

# Run the container
docker run -d -p 3000:3000 YOUR_DOCKERHUB_USERNAME/devops-app:latest
