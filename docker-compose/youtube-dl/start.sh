#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your youtube-dl instance, e.g.:

export DOMAIN=youtube-dl.mydomain.com

#Make sure that your DNS records point that domain (e.g. youtube-dl.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c youtube-dl.yml youtube-dl

echo "Access at: https://${DOMAIN}"

sleep 10 
docker stack ps youtube-dl
sleep 10 
docker stack ps youtube-dl
docker service logs youtube-dl_youtube-dl
