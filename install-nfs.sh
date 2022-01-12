apt update
apt -y install nfs-common
echo "you will need to edit fstab:   vim /etc/fstab"
echo "add things like:"
echo "192.168.0.253:/mnt/pool_alpha/vm_storage /mnt/pool_alpha/vm_storage nfs defaults 0 0"
echo "192.168.0.253:/mnt/pool_alpha/video/ /mnt/pool_alpha/video nfs defaults 0 0"
echo "(etc)"
echo "Then make the mount point directories:"
echo "mkdir -p /mnt/pool_alpha/vm_storage"
echo "mkdir -p /mnt/pool_alpha/video"
