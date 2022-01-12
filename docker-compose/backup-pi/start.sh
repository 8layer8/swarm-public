for this in `cat /root/docker-compose/list.txt`
do
	cd /root/docker-compose/${this}
	./start.sh
done



