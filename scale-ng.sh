#!/bin/bash

eksctl scale nodegroup \
--cluster paw-eks-cluster-course-dev-sydney \
--nodes 2 \
--nodes-max 2 \
--name paw-eks-ng-course-dev-sydney
