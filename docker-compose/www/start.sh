#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your cura instance, e.g.:

# export DOMAIN=homeserver.mydomain.com

#Make sure that your DNS records point that domain (e.g. cura.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c www.yml www

echo "Access at: https://www.mydomain.com"
echo "Access at: https://red.mydomain.com"
echo "Access at: https://blue.mydomain.com"
echo "Access at: https://green.mydomain.com"


sleep 10 
docker stack ps www
sleep 10 
docker stack ps www
docker service logs www
