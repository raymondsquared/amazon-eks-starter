#!/bin/bash

eksctl \
delete nodegroup \
--cluster=paw-eks-cluster-course-dev-sydney \
--name=paw-eks-ng-course-dev-sydney

eksctl \
delete nodegroup \
--cluster=paw-eks-cluster-course-dev-sydney \
--name=paw-eks-ng-course-spot-dev-sydney
