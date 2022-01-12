#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your cura instance, e.g.:

# export DOMAIN=pirate.mydomain.com

#Make sure that your DNS records point that domain (e.g. cura.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c docker-compose.yml pirate

echo "Access at: https://nzbhydra2.mydomain.com"
echo "Access at: https://sonarr.mydomain.com"
echo "Access at: https://sabnzbd.mydomain.com"
echo "Access at: https://radarr.mydomain.com"

sleep 10 
docker stack ps pirate
sleep 10 
docker stack ps pirate
docker service logs pirate_sonarr.1
docker service logs pirate_radarr.1
docker service logs pirate_sabnzbd2.1
docker service logs pirate_nzbhydra2.1

