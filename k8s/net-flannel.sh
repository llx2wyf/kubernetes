#!/bin/bash

kubectl apply -f ../flannel/Documentation/kube-flannel-rbac.yml -f ../flannel/Documentation/kube-flannel.yml
