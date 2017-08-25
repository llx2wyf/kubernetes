#!/bin/bash

kubeadm reset
ip link del cni0
ip link del flannel.1
systemctl start kubelet.service
systemctl status kubelet.service
