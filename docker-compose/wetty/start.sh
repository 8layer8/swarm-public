#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your kuma instance, e.g.:

export DOMAIN=wetty.mydomain.com
#export DOMAIN=wetty.remote.mydomain.com

# What box do you want to ssh to inside
export REMOTESERVER=192.168.0.1

#Make sure that your DNS records point that domain (e.g. kuma.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c wetty.yml wetty

echo "Access at: https://${DOMAIN}"

sleep 10 
docker stack ps wetty
sleep 10 
docker stack ps wetty
docker service logs wetty_wetty

