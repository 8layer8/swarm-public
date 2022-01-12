#Connect via SSH to a Docker Swarm manager node.
#Create an environment variable with the domain where you want to access your cura instance, e.g.:
export DOMAIN1=handbrake.mydomain.com
export DOMAIN2=makemkv.mydomain.com

#Make sure that your DNS records point that domain (e.g. cura.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy --compose-file docker-compose.yml compression

echo "Access at: https://${DOMAIN1}"
echo "Access at: https://${DOMAIN2}"

sleep 10 
docker stack ps compression
sleep 10 
docker stack ps compression
docker service logs compression_makemkv
docker service logs compression_handbrake
