# Create the traefik network overlay
docker network create --driver=overlay traefik-public

#Get the Swarm node ID of this node and store it in an environment variable:
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')

#Create a tag in this node, so that Traefik is always deployed to the same node and uses the same volume:
docker node update --label-add traefik-public.traefik-public-certificates=true $NODE_ID

#Create an environment variable with your email, to be used for the generation of Let's Encrypt certificates, e.g.:
export EMAIL=brad@ntbrad.com

#Create an environment variable with the domain you want to use for the Traefik UI (user interface), e.g.:
export DOMAIN=traefik.mydomain.com
#You will access the Traefik dashboard at this domain, e.g. traefik.sys.example.com. So, make sure that your DNS records point the domain to one of the IPs of the cluster. Better if it is the IP where the Traefik service runs (the manager node you are currently connected to).

#Create an environment variable with a username (you will use it for the HTTP Basic Auth for Traefik and Consul UIs), for example:
export USERNAME=admin

#Create an environment variable with the password, e.g.:
# Escape any wacky symbols with a \
export PASSWORD=mypassword

#Use openssl to generate the "hashed" version of the password and store it in an environment variable:
export HASHED_PASSWORD=$(openssl passwd -apr1 $PASSWORD)

#(Optional): Alternatively, if you don't want to put the password in an environment variable, you could type it interactively, e.g.:
#$ export HASHED_PASSWORD=$(openssl passwd -apr1)
#Password: $ enter your password here
#Verifying - Password: $ re enter your password here
#You can check the contents with:

#echo $HASHED_PASSWORD
#It will look like:
#$apr1$89eqM5Ro$CxaFELthUKV21DpI3UTQO.

## To re-pull a base setup, this would overwrite any modifications
## curl -L dockerswarm.rocks/traefik.yml -o traefik.yml

# Launch it as a stack so that the ports get populated around the swarm
docker stack deploy -c traefik.yml traefik
sleep 10
docker stack ps traefik
sleep 10
docker service logs traefik
