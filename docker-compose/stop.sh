for this in `tac /mnt/pool_alpha/vm_storage/docker-compose/list.txt`
do
	cd /mnt/pool_alpha/vm_storage/docker-compose/${this}
	./stop.sh
	# sleep 10
done



