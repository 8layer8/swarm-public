# If needed, regenerate the token on the master node:
docker swarm join-token worker
# Then run it on any/all worker nodes like:
# docker swarm join --token SWMTKN-1-02wqm9v19hey4js984yg8hrhg9tmai80pbwtwiwiery8b-8e9857y49herughkc6jhtc47y5y 192.168.0.123:2377
# Use your IP/DNS and token, obviously
