#!/bin/bash

kubectl get nodes

eksctl get cluster

eksctl get nodegroup \
--cluster paw-eks-cluster-course-dev-sydney
