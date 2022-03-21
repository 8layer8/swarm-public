# run it with:
# source proxy.sh

docker rm okular-docker-test
docker rmi docker-okular
docker build -t mindcrime30/docker-okular:0.0.1 .

# docker images
docker run --rm -p 5805:5800 --mount type=bind,source="/mnt/pool_alpha/files/Books",target=/storage  --name docker-okular-test mindcrime30/docker-okular:0.0.1

# To use for real, this has to go to a docker registry, either hub.docker.com or a local one
# Put a real version above and build it, and then push that image to your repo with:
# docker login
# yada yada
# docker push mindcrime30/docker-okular:0.0.1
