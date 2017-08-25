#!/bin/bash

kubectl create -f ../heapster/deploy/kube-config/influxdb/
kubectl create -f ../heapster/deploy/kube-config/rbac/heapster-rbac.yaml
