#!/bin/bash

# 1. Apply
# kubectl \
# apply -f nginx-deployment.yaml

# 2. Check
kubectl get pod
kubectl get nodes
# kubectl get nodes -l instance-type=spot

# 3. Scale
# kubectl scale --replicas=2 deployment/paw-eks-deployment-nginx-dev-sydney

# 4. Check logs
kubectl -n kube-system logs deployment.apps/cluster-autoscaler
# kubectl -n kube-system logs deployment.apps/cluster-autoscaler | grep -A5 "Expanding Node Group"
