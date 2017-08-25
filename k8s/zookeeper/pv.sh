#!/bin/bash

kubectl apply -f pv-nfs-1.yaml
kubectl apply -f pv-nfs-2.yaml
kubectl apply -f pv-nfs-3.yaml

kubectl get pv
