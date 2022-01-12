#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your cura instance, e.g.:

export DOMAIN=wetty.remote.mydomain.com

#Make sure that your DNS records point that domain (e.g. cura.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c wetty.yml wetty

echo "Access at: https://${DOMAIN}"

sleep 10
docker stack ps wetty
sleep 10
docker stack ps wetty
docker service logs wetty_wetty.1
