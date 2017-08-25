#!/bin/bash

#systemctl enable kubelet
systemctl stop kubelet
systemctl start kubelet

#cp ~/10-weave.conf /etc/cni/net.d/

kubeadm init --apiserver-advertise-address=192.168.1.230 --pod-network-cidr=10.244.0.0/16 --kubernetes-version=v1.7.2

cp /etc/kubernetes/admin.conf $HOME/
chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf

kubectl get node

./net-flannel.sh
