#!/bin/bash

# Docker, Docker compose and Portainer installation script.

# Update the apt package index
sudo apt update

# Install prerequisites
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker apt repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the apt package index again
sudo apt update

# Install Docker CE
sudo apt install -y docker-ce

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Allow current user to run Docker commands
sudo usermod -aG docker $USER

# Install Docker Compose
# Check https://github.com/docker/compose/releases for the latest version
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\" -f4)
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Print Docker and Docker Compose versions
docker --version
docker-compose --version

echo "Docker and Docker Compose installation completed!"

#Wait 10 seconds
sleep 10 

#Install Portanior
echo "Installing Portanior"

docker volume create portainer_data

#download and install the Portainer Server container:

docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

echo "Portanior install complete"

echo "Click here to login" https://docker.test.intra:9443/

#Wait 10 seconds 
sleep 10 

#Copy OpenCTI bash script from repo
git clone

#Call another file
