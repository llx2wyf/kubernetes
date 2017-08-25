#!/bin/bash
kubectl get svc,deploy llx-nginx -o yaml > gen.yaml

#kubectl get -f ./nginx.yaml -o yaml > gen.yaml
