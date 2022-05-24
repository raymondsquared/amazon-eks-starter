#!/bin/bash

# REF: https://github.com/kubernetes/autoscaler/tree/master/charts/cluster-autoscaler#additional-configuration

# Step 1.
# kubectl apply \
# -f https://raw.githubusercontent.com/kubernetes/autoscaler/master/cluster-autoscaler/cloudprovider/aws/examples/cluster-autoscaler-autodiscover.yaml

# Step 2.
# kubectl \
# -n kube-system \
# annotate deployment.apps/cluster-autoscaler \
# cluster-autoscaler.kubernetes.io/safe-to-evict="false"

# Step 3. Grab image from the GitHub release page 
# REF: https://github.com/kubernetes/autoscaler/releases/tag/cluster-autoscaler-1.22.2
# k8s.gcr.io/autoscaling/cluster-autoscaler:v1.22.2

# Step 4. Edit
# kubectl \
# -n kube-system \
# edit deployment.apps/cluster-autoscaler

# set the image version at property ```image=k8s.gcr.io/cluster-autoscaler:v1.22.2```  
# set your EKS cluster name at the end of property 
# ```- --node-group-auto-discovery=asg:tag=k8s.io/cluster-autoscaler/enabled,k8s.io/cluster-autoscaler/paw-eks-cluster-course-dev-sydney```

# Step 5.  Check the edited autoscaler
# kubectl -n kube-system describe deployment cluster-autoscaler

# kubectl -n kube-system get pod
