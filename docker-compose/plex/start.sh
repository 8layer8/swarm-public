#Create an environment variable with the domain where you want to access your cura instance, e.g.:

export DOMAIN=overseer.domain.com
export DOMAIN2=plex.domain.com
export DOMAIN3=aplexa.domain.com
# gaps just uses a local port export DOMAIN4=gaps.domain.com

#Make sure that your DNS records point that domain (e.g. cura.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

# Plex is separate so that it can be on the LAN for HDHomeRun to work and use the GPU for transcoding
# docker-compose -f plex-server.yml up -d

# This is Plex and Aplexa (for the Echo's to use) and the supporting apps like overseer and dizque TV
docker stack deploy -c plex.yml plex

# echo "Access at: https://${DOMAIN}"
echo "Plex Meta Manager has no UI"
sleep 10
docker stack ps plex
sleep 10
docker stack ps plex
docker service logs plex_plex_pmm
