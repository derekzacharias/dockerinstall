#Install Portanior
echo "Installing Portanior"

#wait 5 sec
sleep 5

#Create a docker volume for persistent storage
sudo docker volume create portainer_data

#download and install the Portainer Server container:

sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

echo "Portanior install complete"


echo "To access web console go to the following location:" 

ip a | grep ens
