#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your Swarmpit instance, e.g.:
export DOMAIN=swarmpit.mydomain.com

#Make sure that your DNS records point that domain (e.g. swarmpit.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

#Get the Swarm node ID of this (manager) node and store it in an environment variable:
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')

#Create a label in this node, so that the CouchDB database used by Swarmpit is always deployed to the same node and uses the existing volume:
docker node update --label-add swarmpit.db-data=true $NODE_ID

#Create another label in this node, so that the Influx database used by Swarmpit is always deployed to the same node and uses the existing volume:
docker node update --label-add swarmpit.influx-data=true $NODE_ID

# Set username and password here if the app doesn't support it natively, this gives you a password prompt for anything
#Create an environment variable with a username (you will use it for the HTTP Basic Auth for Traefik and Consul UIs), for example:
export USERNAME=admin

#Create an environment variable with the password, e.g.:
# Escape any wacky symbols with a \
export PASSWORD=mypassword

# Optional - Use openssl to generate the "hashed" version of the password and store it in an environment variable:
export HASHED_PASSWORD=$(openssl passwd -apr1 $PASSWORD)


docker stack deploy -c swarmpit.yml swarmpit

echo "Access at: https://${DOMAIN}"

sleep 10 
docker stack ps swarmpit
sleep 10 
docker stack ps swarmpit
docker service logs swarmpit_app
