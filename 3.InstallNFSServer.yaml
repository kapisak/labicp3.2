apt-get install -y nfs-common
apt-get install -y nfs-kernel-server
mkdir /storage
chmod 777 /storage
cat "/storage           *(rw,sync,no_subtree_check,async,insecure,no_root_squash)"  >> /etc/exports

exportfs -ra
service nfs-kernel-server restart

