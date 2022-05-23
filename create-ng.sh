#!/bin/bash

eksctl \
create nodegroup \
--config-file=eks-config.yaml 
