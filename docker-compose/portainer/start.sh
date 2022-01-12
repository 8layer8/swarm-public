#Preparation
#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your Portainer instance, e.g.:
export DOMAIN=portainerswarm.mydomain.com
#Make sure that your DNS records point that domain (e.g. portainer.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

#Get the Swarm node ID of this (manager) node and store it in an environment variable:
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')

#Create a tag in this node, so that Portainer is always deployed to the same node and uses the existing volume:
docker node update --label-add portainer.portainer-data=true $NODE_ID

#Deploy the stack with:
docker stack deploy -c portainer.yml portainer
#It will use the environment variables you created above.

#Check if the stack was deployed with:
sleep 10
docker stack ps portainer
sleep 10
docker service logs portainer_portainer

# Force a restart if you didn't get the password set in time
# docker service update portainer_portainer --force
