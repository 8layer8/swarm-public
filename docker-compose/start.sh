for this in `cat /mnt/pool_alpha/vm_storage/docker-compose/list.txt`
do
	cd /mnt/pool_alpha/vm_storage/docker-compose/${this}
	./start.sh
done



