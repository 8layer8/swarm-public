#Connect via SSH to a Docker Swarm manager node.

#Create an environment variable with the domain where you want to access your wordpress instance, e.g.:

# export DOMAIN=www.mydomain.com
# yeah, this one is hardcoded in the yml file at the moment, sorry

#Make sure that your DNS records point that domain (e.g. www.mydomain.com) (via whatever portforwarding is required) to one of the IPs of the Docker Swarm mode cluster.

docker stack deploy -c wordpress.yml wordpress

echo "Access at: https://www.mydomain.com"

sleep 10
docker stack ps wordpress
sleep 10
docker stack ps wordpress
docker service logs wordpress_wwwmydomaincomdb
docker service logs wordpress_wwwmydomaincom
