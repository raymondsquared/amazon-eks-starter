#!/bin/bash

eksctl \
create nodegroup \
--config-file=eks-config.yaml \
# --include='paw-eks-ng-course-spot-dev-sydney'
