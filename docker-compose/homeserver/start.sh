#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your cura instance, e.g.:

# export DOMAIN=homeserver.mydomain.com

#Make sure that your DNS records point that domain (e.g. cura.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c homeserver.yml homeserver

echo "Access at: https://heimdall.mydomain.com"
echo "Access at: https://pyload.mydomain.com"
echo "Access at: https://deemix.mydomain.com"
echo "Access at: https://cyberchef.mydomain.com"
echo "Access at: https://calibre.mydomain.com"
echo "Access at: https://stdnotes.mydomain.com"

sleep 10 
docker stack ps homeserver
sleep 10 
docker stack ps homeserver
docker service logs homeserver_heimdall.1
