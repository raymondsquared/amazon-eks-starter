#!/bin/bash

kubectl \
-n kube-system \
get cm

# 1. copy aws-auth-configmap locally
# kubectl -n kube-system get configmap aws-auth -o yaml > aws-auth-configmap.yaml

# 2. edit the yaml file and add a "mapUsers" section
# ```bash
#   mapUsers: |
#     - userarn: arn:aws:iam::xxxxxxxxx:user/k8s-cluster-admin
#       username: k8s-cluster-admin
#       groups:
#         - system:masters
# ```

# 3. apply the changes
# kubectl \
# apply \
# -f aws-auth-configmap.yaml \
# -n kube-system

# kubectl -n kube-system get configmap aws-auth 
# kubectl -n kube-system describe configmap aws-auth 

# 4. test running container
# kubectl get po
# kubectl run nginx --image=nginx --restart=Never
# kubectl get po

# 5. create namespace
# kubectl create namespace production

# 6. create role

# 7. create role-binding

# 8. apply role & role-binding
# kubectl apply -f role.yaml
# kubectl apply -f role-binding.yaml

# 9. add paw-developer-1 to aws-auth configmap
# kubectl -n kube-system get configmap aws-auth -o yaml > aws-auth-configmap.yaml

# 10. apply the changes
# kubectl \
# apply \
# -f aws-auth-configmap.yaml \
# -n kube-system

# kubectl -n kube-system get configmap aws-auth 
# kubectl -n kube-system describe configmap aws-auth 

# 11. test running container as admin
# kubectl get po
# kubectl run nginx --image=nginx --restart=Never -n production
# kubectl get po

# kubectl get po -n production
