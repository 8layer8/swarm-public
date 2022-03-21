# Pull base image.
# https://hub.docker.com/r/jlesage/baseimage-gui#accessing-the-gui
FROM jlesage/baseimage-gui:debian-11

# Install xterm.
RUN add-pkg okular okular-extra-backends

RUN mkdir /storage

# Copy the start script.
COPY startapp.sh /startapp.sh

# Define mountable directories.
VOLUME ["/storage"]

# Metadata.
LABEL \
      org.label-schema.name="Okular Viewer" \
      org.label-schema.description="Docker container for Okular" \
      org.label-schema.version="unknown" \
      org.label-schema.vcs-url="https://github.com/8layer8/docker-okular" \
      org.label-schema.schema-version="1.0"
      
# Set the name of the application.
ENV APP_NAME="Okular Viewer"
ENV KEEP_APP_RUNNING=1
ENV DISPLAY_WIDTH=1024
ENV DISPLAY_HEIGHT=1760

# Testing:
# docker rm docker-okular-test
# docker rmi docker-okular
# docker build -t docker-okular .
# #docker images
# #docker run --rm -p 5805:5800 -name docker-okular-test docker-okular
# #doesn't work yet, use a bind mount for now
# #docker run --rm -p 5805:5800 --mount type=volume,dst=/storage,volume-driver=local,volume-opt=type=nfs,\"volume-opt=o=nfsvers=4,addr=192.168.0.253\",volume-opt=device=:/pool_alpha/files -name docker-okular-test docker-okular
# docker run --rm -p 5805:5800 --mount type=bind,source="/mnt/pool_alpha/files/Books",target=/storage  --name docker-okular-test mindcrime30/docker-okular:0.0.1

