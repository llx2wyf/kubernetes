#!/bin/bash

kubectl run wyf-nginx --image=nginx:latest --image-pull-policy='IfNotPresent' --port=80 --replicas=3
kubectl expose deployment wyf-nginx --type=NodePort
kubectl get svc

#kubectl scale deploy wyf-nginx --replicas=2
#kubectl expose deployment wyf-nginx --port=5555 --target-port=80 --external-ip=120.132.38.106
#kubectl expose deployment wyf-nginx --type=LoadBalancer

#?//need you test..........................
#kubectl taint nodes --all node-role.kubernetes.io/master-
