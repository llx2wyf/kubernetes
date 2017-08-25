#!/bin/bash

kubectl delete -f ../heapster/deploy/kube-config/influxdb/
kubectl delete -f ../heapster/deploy/kube-config/rbac/heapster-rbac.yaml
