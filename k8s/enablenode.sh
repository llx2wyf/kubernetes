#!/bin/bash
:<<!
kubectl uncordon nodeName
!
kubectl get node -o wide
kubectl patch node $1 -p '{"spec":{"unschedulable":false}}'
kubectl get node -o wide
