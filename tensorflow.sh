#!/bin/bash
# System update
yum update -y
# Install tools
yum install git emacs -y
# Install Tensor
pip install --upgrade tensorflow

