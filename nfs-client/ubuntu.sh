#!/bin/bash
nfs_server_ip=your-nfs-server-ip
nfs_shared_folder=your-shared-folder
sudo apt-get install -y  nfs-common
sudo mount -t nfs $nfs_server_ip:/nfs nfs_shared_folder
# sudo umount nfs_shared_folder
