# docker-okular
Okular in a Docker container, Web UI

```
docker rm docker-okular-test
docker rmi docker-okular
docker build -t docker-okular .
docker images
docker run --rm -p 5805:5800 -name docker-okular-test docker-okular
```

Mount /storage as a persistent volume


# Sample
```
---
version: '3.7'
services:
  okular:
    image: mindcrime30/docker-okular:latest
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - TZ=${TZ}
    ports:
      - 5805:5800
    volumes:
      - /mnt/pool_alpha/files/docs:/storage
```

# With traefik
```
---
version: '3.7'
services:
  okular:
    image: mindcrime30/docker-okular:latest
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - TZ=${TZ}
    volumes:
      - /mnt/pool_alpha/files/docs:/storage
    labels:
      - traefik.enable=true
      - traefik.frontend.rule=Host:okular.${LOCALDOMAIN}
      - traefik.port=5800
      - traefik.frontend.entryPoints=https
      - traefik.frontend.headers.SSLRedirect=true
```

# Docker Swarm
```
version: '3.7' 
services: 
  okular: 
    image: mindcrime30/docker-okular:latest
    environment: 
      - PUID=1020
      - PGID=1020
      - TZ=America/New_York
    networks:
      - net
      - traefik-public
    volumes: 
      - /mnt/pool_alpha/files/docs:/storage 
    deploy:
      labels:
        - traefik.enable=true
        - traefik.docker.network=traefik-public
        - traefik.constraint-label=traefik-public
        - traefik.http.routers.okular-http.rule=Host(`${DOMAIN?Variable not set}`)
        - traefik.http.routers.okular-http.entrypoints=http
        - traefik.http.routers.okular-http.middlewares=https-redirect
        - traefik.http.routers.okular-https.rule=Host(`${DOMAIN?Variable not set}`)
        - traefik.http.routers.okular-https.entrypoints=https
        - traefik.http.routers.okular-https.tls=true
        - traefik.http.routers.okular-https.tls.certresolver=le
        - traefik.http.services.okular.loadbalancer.server.port=5800

networks:
  net:
    driver: overlay
    attachable: true
  traefik-public:
    external: true

```
