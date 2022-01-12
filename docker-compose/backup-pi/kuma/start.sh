#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your kuma instance, e.g.:

export DOMAIN=kuma.8layer8.com

#Make sure that your DNS records point that domain (e.g. kuma.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c kuma.yml kuma

echo "Access at: https://${DOMAIN}"

sleep 10 
docker stack ps kuma
sleep 10 
docker stack ps kuma
docker service logs kuma_kuma
