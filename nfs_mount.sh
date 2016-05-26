# A nice post for setting up NFS server and client on Ubuntu https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-14-04

# Server side
sudo apt-get update
sudo apt-get install nfs-kernel-server
sudo mkdir /var/nfs
sudo chown nobody:nogroup /var/nfs
sudo nano /etc/exports
sudo exportfs -a
sudo service nfs-kernel-server start

# Client side
sudo apt-get update
sudo apt-get install nfs-common
sudo mkdir -p /mnt/nfs/home
sudo mkdir -p /mnt/nfs/var/nfs
sudo mount 1.2.3.4:/home /mnt/nfs/home
sudo mount 1.2.3.4:/var/nfs /mnt/nfs/var/nfs
mount -t nfs
df -h

# Configure auto mount on client
sudo nano /etc/fstab

# Unmount on client
sudo umount /mnt/nfs/home
sudo umount /mnt/nfs/var/nfs
