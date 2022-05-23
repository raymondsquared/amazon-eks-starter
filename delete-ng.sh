#!/bin/bash

eksctl \
delete nodegroup \
--cluster=paw-eks-cluster-course-dev-sydney \
--name=paw-eks-ng-course-dev-sydney
