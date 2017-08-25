#!/bin/bash
:<<!
kubectl cordon nodeName
!
kubectl get node -o wide
kubectl patch node $1 -p '{"spec":{"unschedulable":true}}'
kubectl get node -o wide
