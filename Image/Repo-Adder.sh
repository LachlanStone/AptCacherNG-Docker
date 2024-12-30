# Setup the Proxmox BackupEnd Repos File
echo \
"# Proxmox VE Specific Files
http://download.proxmox.com/debian/pve
http://download.proxmox.com/debian/ceph-quincy
http://download.proxmox.com/debian/ceph-reef
# Proxmox Backup Server specific Files
http://download.proxmox.com/debian/pbs" \
>> /etc/apt-cacher-ng/backends_proxomx.default # Directory to Echo into

echo \
"# Proxmox VE Specific Files
http://download.proxmox.com/debian/pve
http://download.proxmox.com/debian/ceph-quincy
http://download.proxmox.com/debian/ceph-reef
# Proxmox Backup Server specific Files
http://download.proxmox.com/debian/pbs" \
>> /usr/lib/apt-cacher-ng/proxmox_mirrors.default # Directory to Echo into


echo \
"# Debian Specific Files
http://download.docker.com/linux/debian
# Ubuntu Specific Files
http://download.docker.com/linux/ubuntu" \
>> /usr/lib/apt-cacher-ng/docker_mirrors.default # Directory to Echo into

echo \
"# Debian Specific Files
http://download.docker.com/linux/debian
# Ubuntu Specific Files
http://download.docker.com/linux/ubuntu" \
>> /etc/apt-cacher-ng/backends_docker.default # Directory to Echo into

