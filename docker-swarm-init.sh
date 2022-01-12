# If you are going to clone the box for a worker node, stop here and clone it first!
# Use the IP or FQDN of the host!
sudo docker swarm init --advertise-addr 192.168.0.123
# this gives you a URL to join the cluster, keep it somewhere
