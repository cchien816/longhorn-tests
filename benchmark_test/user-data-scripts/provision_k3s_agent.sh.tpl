#!/bin/bash

sudo zypper ref -y
sudo zypper install -y -t pattern devel_basis
sudo zypper install -y open-iscsi nfs-client
sudo systemctl -q enable iscsid
sudo systemctl start iscsid

mkfs.ext4 -E nodiscard /dev/nvme1n1
mkdir /mnt/sda1
mount /dev/nvme1n1 /mnt/sda1

mkdir /mnt/sda1/local
mkdir /opt/local-path-provisioner
mount --bind /mnt/sda1/local /opt/local-path-provisioner

mkdir /mnt/sda1/longhorn
mkdir /var/lib/longhorn
mount --bind /mnt/sda1/longhorn /var/lib/longhorn

until (curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="agent" K3S_URL="${k3s_server_url}" INSTALL_K3S_VERSION="${k3s_version}" K3S_CLUSTER_SECRET="${k3s_cluster_secret}" sh -); do
  echo 'k3s agent did not install correctly'
  sleep 2
done
