for this in `cat /root/docker-compose/list.txt`
do
	cd /root/docker-compose/${this}
	./stop.sh
	# sleep 10
done



