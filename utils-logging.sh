#!/bin/bash

# eksctl \
# utils update-cluster-logging \
# --config-file eks-config.yaml \
# --approve

# disable via plain commandline call
eksctl \
utils update-cluster-logging \
--cluster=paw-eks-cluster-course-dev-sydney \
--disable-types all \
--approve
