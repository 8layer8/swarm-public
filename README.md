# swarm-public
Code for public docker swarm build

Go read:
https://www.ntbrad.com/2022/01/05/docker-swarm/
for instructions.

|Script|  App |Purpose|LE Certs|Public|Private|Authentication|NFS Storage|
|---|---|---|---|---|---|---|---|
|traefik|Traefik |Reverse Proxy|Digital Ocean Wildcard |Yes |Yes |Yes|Yes|
|audioserve|Audioserve |Audiobook server|Yes|Yes|Yes|(App)|Yes (RO)|
|backup-pi|traefik|Reverse Proxy|Yes|Yes|Yes|Basic|No|
|backup-pi|minio S3 Offsite Storage|Offsite Backups|Yes|Yes|Yes|(App)|No|
|backup-pi|wetty (maybe)|Remote admin|Yes|Yes|Yes|Basic|No|
|backup-pi|kuma uptime|Monitoring from remote|Yes|Yes|Yes|(App)|No|
|compression|handbrake|Video Compression|Yes|No|Yes|Basic|Yes|
|compression|makemkv|Video Dissection|Yes|No|Yes|Basic|Yes|
|cura|cura 3d|3d Printer Slicer|No|No|Yes|Internal|Yes|
|homeserver|heimdall|Link Dashboard|Yes|No|Yes|Internal|Yes|
|homeserver|pyload|Downloader offload|Yes|No|Yes|Internal|Yes|
|homeserver|speedtest|network speed tester|Yes|Yes|Yes|None|No|
|homeserver|deemix||Yes|No|Yes|Basic|Yes|
|homeserver|cyberchef|Cyber stuffs|Yes|Yes|No|None|No|
|homeserver|calibre|Books backend|No|No|Yes|Internal|Yes|
|homeserver|calibre-web|Book Web UI|Yes|No|Yes|Internal|Yes|
|homeserver|staticsite|Static web content|Yes|Yes|Yes|None|Yes (RO)|
|kuma|kuma uptime monitoring|Uptime and service monitoring|Yes|Yes|Yes|Internal|Yes|
|minio|minio S3 Storage|Backups|Yes|No|Yes|Internal|Yes|
|pirate|radarr|||||||
|pirate|sabnzbd|||||||
|pirate|sonarr|||||||
|pirate|readarr|||||||
|pirate|nzbhydra2|||||||
|portainer|portainer UI|Docker admin UI||||||
|portainer|portainer agent|Docker admin agent||||||
|proxies|proxied non-docker services|other sites||||||
|seafile|Seafile UI|Self hosted Dropbox||||||
|seafile|Seafile Mysql DB|seafile database||||||
|seafile|memcache|seafile support||||||
|seafile|elasticsearch|seafile support||||||
|swarmpit|swarmpit|Docker Swarm Admin UI||||||
|swarmpit|db|Docker Swarmpit support||||||
|swarmpit|influx|Docker Swarmpit support||||||
|swarmpit|agent|Docker Swarmpit support||||||
|wetty|wetty|Web based SSH|Yes|No|Yes|Internal + SSH|No|
|www|Various websites for testing|other websites|Yes|Yes|Yes|None|No|
|youtube-dl|youtube-dl web ui|Youtube downloader|Yes|No|Yes|Internal|Yes|
