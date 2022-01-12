docker node ls
docker service create --name webserver -p 8080:80 nginx
echo "This isn't really meant to run as-is, read the source please."
# You should now be able to hit ANY node on port 8080 and get a response, it MAY take a few minutes, just chill.

# Scale it up or down:
# docker service scale webserver=3
# docker service scale webserver=1

# See that it is working:
# docker service ls

# Delete it:
# docker service rm webserver
