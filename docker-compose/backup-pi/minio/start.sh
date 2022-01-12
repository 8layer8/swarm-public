#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your cura instance, e.g.:

export DOMAIN=s3.remote.mydomain.com

#Make sure that your DNS records point that domain (e.g. cura.sys.example.com) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c minio.yml minio

echo "Access at: https://${DOMAIN}"

sleep 10
docker stack ps minio
sleep 10
docker stack ps minio
docker service logs minio_minio

