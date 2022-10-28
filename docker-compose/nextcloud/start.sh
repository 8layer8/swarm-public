#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your cura instance, e.g.:

export DOMAIN=nextcloud.mydomain.com

#Make sure that your DNS records point that domain (e.g. cura.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c nextcloud.yml nextcloud

echo "Access at: https://nextcloud.mydomain.com"

sleep 10
docker stack ps nextcloud
sleep 10
docker stack ps nextcloud
docker service logs nextcloud_nextcloud
docker service logs nextcloud_db
docker service logs nextcloud_redis
